package standardhompage.comnUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import jakarta.servlet.http.HttpServletRequest;
import standardhompage.dto.uploadFile.UploadFileReq;
import standardhompage.dto.uploadFile.UploadFileRes;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Base64;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class ComnUtil {
	@Autowired
	private ComnUtilMapper comnUtilMapper;

	@Value("${DOMAIN_PATH}")
	private String domainPath;

	@Value("${IMAGE_PATH}")
	private String imageSavePath;

	@Value("${FILE_PATH}")
	private String fileSavePath;

	
	/**
	 * 썸네일 이미지 저장
	 * @param file
	 * @param filePath
	 * @param boardSeq
	 * @return
	 */
	public UploadFileReq uploadThumbImage(MultipartFile file, String filePath, int boardSeq) {
		UploadFileReq response = new UploadFileReq();
		
		// 파일 이름 및 확장자 추출
		String originalFilename = file.getOriginalFilename();
		String ext = "";

		if (originalFilename != null && originalFilename.contains(".")) {
			int dotIndex = originalFilename.lastIndexOf('.');
			ext = originalFilename.substring(dotIndex + 1);
		}

		// uuid로 변환 (여기서 uuid 변환 로직은 생략)
		String uuid = convertUUID(originalFilename);
		
		// 저장 경로 생성
		String uploadDirPath = "";
			// 실 저장경로
			uploadDirPath = domainPath+imageSavePath + "/" + filePath;
			// 호출 경로
			response.setFile_dir(imageSavePath + "/" + filePath + "/" + uuid + "." + ext);

		// 디렉토리 존재 여부 확인 및 생성
		File dir = new File(uploadDirPath);
		if (!dir.exists()) {
			dir.mkdirs();
		}

		// 파일 저장 경로 설정
		String savePath = uploadDirPath + "/" + uuid + "." + ext;
		try (FileOutputStream fos = new FileOutputStream(savePath)) {
			fos.write(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}

		// 파일 크기 가져오기 (바이트 단위)
		long fileSizeBytes = file.getSize();

		// 파일 크기를 메가바이트로 변환하여 문자열로 출력
		double fileSizeMB = (double) fileSizeBytes / (1024 * 1024); // 바이트를 메가바이트로 변환
		String fileSizeStr = String.format("%.2f", fileSizeMB); // 소수점 둘째자리까지 표시

		if (boardSeq > 0) {
			response.setBoard_seq(boardSeq);
		}
		
		response.setFile_type("thumb");
		response.setFile_name(uuid);
		response.setOriginal_name(originalFilename);
		response.setFile_ext(ext);
		response.setFile_size(fileSizeStr);
		return response;
	}
	
	/**
	 * 2024-06-19 업로드 파일 저장 및 정보 반환
	 * 
	 * @param MultipartFile file
	 * @param String        FilePath
	 * @param int           boardSeq
	 * @return UploadFileRes
	 */
	public UploadFileReq uploadFile(MultipartFile file, String filePath, int boardSeq) {
		UploadFileReq response = new UploadFileReq();

		// 파일 이름 및 확장자 추출
		String originalFilename = file.getOriginalFilename();
		String ext = "";

		if (originalFilename != null && originalFilename.contains(".")) {
			int dotIndex = originalFilename.lastIndexOf('.');
			ext = originalFilename.substring(dotIndex + 1);
		}

		// uuid로 변환 (여기서 uuid 변환 로직은 생략)
		String uuid = convertUUID(originalFilename);

		String[] imageExtensions = { "jpg", "jpeg", "png", "gif", "bmp", "webp", "tiff" };

		boolean isImage = Arrays.asList(imageExtensions).contains(ext);
		
		
		// 저장 경로 생성
		String uploadDirPath = "";
		if (isImage) {
			// 실 저장경로
			uploadDirPath = domainPath+imageSavePath + "/" + filePath;
			
			// 호출 경로
			response.setFile_dir(imageSavePath + "/" + filePath + "/" + uuid + "." + ext);
		} else {
			// 실 저장경로
			uploadDirPath = domainPath+fileSavePath + "/" + filePath;
			
			// 호출 경로
			response.setFile_dir(fileSavePath + "/" + filePath + "/" + uuid + "." + ext);
		}

		// 디렉토리 존재 여부 확인 및 생성
		File dir = new File(uploadDirPath);
		if (!dir.exists()) {
			dir.mkdirs();
		}

		// 파일 저장 경로 설정
		String savePath = uploadDirPath + "/" + uuid + "." + ext;
		try (FileOutputStream fos = new FileOutputStream(savePath)) {
			fos.write(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}

		// 파일 크기 가져오기 (바이트 단위)
		long fileSizeBytes = file.getSize();

		// 파일 크기를 메가바이트로 변환하여 문자열로 출력
		double fileSizeMB = (double) fileSizeBytes / (1024 * 1024); // 바이트를 메가바이트로 변환
		String fileSizeStr = String.format("%.2f", fileSizeMB); // 소수점 둘째자리까지 표시

		if (boardSeq > 0) {
			response.setBoard_seq(boardSeq);
		}

		response.setFile_name(uuid);
		response.setOriginal_name(originalFilename);
		response.setFile_ext(ext);
		response.setFile_size(fileSizeStr);
		return response;
	}

	/**
	 * 2024-06-19 image 파일 blob 타입으로 변환 및 반환
	 * 
	 * @param file
	 * @return byte[] 이미지
	 */
	public byte[] convertBlob(MultipartFile file) {
		byte[] image;

		try {
			image = file.getBytes();
			return image;
		} catch (IOException e) {
			e.printStackTrace();
			return new byte[0];
		}
	}

	/**
	 * Editor 데이터 처리
	 * 
	 * @param HttpServletRequest req
	 * @param String             content
	 * @param filePath           / 저장될 경로 ex: banner, popup, board
	 * @return UploadFileRes
	 */
	public UploadFileRes editorContent(MultipartHttpServletRequest req, String content, String filePath) {

		UploadFileRes uploadFileRes = convertBase64File(content, filePath);

		String editorContent = null;

		if (uploadFileRes != null) {
			editorContent = editorTextBefore(content) + "\n ![" + uploadFileRes.getOriginal_name() + "]" + "(" + uploadFileRes.getFile_dir() + ")"
					+ editorTextAfter(content);
			
		} else {
			uploadFileRes = new UploadFileRes();
			editorContent = content;
		}
		
		/******************* Set File Data ********************/
		uploadFileRes.setWrite_ip(req.getRemoteAddr());
		uploadFileRes.setContent(editorContent);

		return uploadFileRes;
	}
	

	/**
	 * req가 필요한 경우 사용
	 * 
	 * @param UploadFileRes res
	 * @return UploadFileReq
	 */
	public UploadFileReq settingReq(UploadFileRes res) {
		UploadFileReq req = new UploadFileReq();

		req.setBoard_seq(res.getBoard_seq());
		req.setDown_num(res.getDown_num());
		req.setFile_dir(res.getFile_dir());
		req.setFile_ext(res.getFile_ext());
		req.setFile_name(res.getFile_Name());
		req.setFile_size(res.getFile_size());
		req.setOriginal_name(res.getOriginal_name());
		req.setWrite_ip(res.getWrite_ip());

		return req;
	}

	/**
	 * 2024-06-21 Toast image 처리 이미지 base64 코드 => 파일 변환 및 저장 Markdown 타입 코드
	 * 
	 * @param base64
	 * @return
	 */
	private UploadFileRes convertBase64File(String base64, String filePath) {

		UploadFileRes response = new UploadFileRes();

		// 표현식 패턴 지정 => markdown
		String patternString = "!\\[.*\\]\\((data:[^;]+);base64,(.*)\\)";
		Pattern pattern = Pattern.compile(patternString);
		Matcher matcher = pattern.matcher(base64);

		if (matcher.find()) {
			String mime_type = matcher.group(1); // MIME 타입 부분
			String base64Data = matcher.group(2); // base64 데이터 부분

			// 제목(title) 추출
			String titlePattern = "!\\[(.*)\\].*";
			Pattern titlePatternRegex = Pattern.compile(titlePattern);
			Matcher titleMatcher = titlePatternRegex.matcher(base64);
			String title = "";
			if (titleMatcher.find()) {
				title = titleMatcher.group(1).trim(); // 이미지 제목 부분
			} else {
				title = ""; // 제목이 없는 경우 기본값 설정
			}

			String ext = null;

			if (title.equals("")) {
				Pattern pattern2 = Pattern.compile("\\!\\[(.*?)\\]\\(data:image/(.*?);");
				Matcher matcher2 = pattern2.matcher(base64);

				if (matcher2.find()) {
					String title2 = matcher2.group(1); // 첫 번째 그룹: 제목
					String extension = matcher2.group(2); // 두 번째 그룹: 확장자

					title = title2;
					ext = extension;
				} 
			} else {

				// 확장자(ext) 추출
				String[] parts = title.split("\\.");
				ext = parts[parts.length - 1]; // 파일명이 '.'을 포함할 수 있으므로 마지막 요소를 사용
			}

			// base64 데이터를 파일로 변환
			try {
				byte[] decodedBytes = Base64.getDecoder().decode(base64Data);

				String uuid = convertUUID(title);

				String[] imageExtensions = { "jpg", "jpeg", "png", "gif", "bmp", "webp", "tiff" };

				boolean isImage = Arrays.asList(imageExtensions).contains(ext);
				
				// 저장 경로 생성
				String uploadDirPath = "";
				if (isImage) {
					// 실 저장경로
					uploadDirPath = domainPath+imageSavePath + "/" + filePath;
					
					// 호출 경로
					response.setFile_dir(imageSavePath + "/" + filePath+ "/" + uuid + "." + ext);
				} else {
					// 실 저장경로
					uploadDirPath = domainPath+fileSavePath + "/" + filePath;
					
					// 호출 경로
					response.setFile_dir(fileSavePath + "/" + filePath+ "/" + uuid + "." + ext);
				}

				
				// 디렉토리 존재 여부 확인 및 생성
				File dir = new File(uploadDirPath);
				if (!dir.exists()) {
					dir.mkdirs();
				}

				
				// 파일 저장 경로 설정
				String savePath = uploadDirPath + "/" + uuid + "." + ext;
				File dest = new File(savePath);

				// 파일 저장
				try (FileOutputStream fos = new FileOutputStream(dest)) {
					fos.write(decodedBytes);
				}

				// 파일 크기 가져오기 (바이트 단위)
				long fileSizeBytes = dest.length();
				// 파일 크기를 메가바이트로 변환하여 문자열로 출력
				double fileSizeMB = (double) fileSizeBytes / (1024 * 1024); // 바이트를 메가바이트로 변환
				String fileSizeStr = String.format("%.2f", fileSizeMB); // 소수점 둘째자리까지 표시

				response.setFile_Name(uuid);
				response.setOriginal_name(title);
				response.setFile_ext(ext);
				response.setFile_size(fileSizeStr);

			} catch (IOException e) {
				e.printStackTrace();
			}

			return response;
		} else {
			System.err.println("Editor에 파일이 존재하지 않습니다.");
			return null;
		}
	}

	/**
	 * Toast Editor Text 처리 Image 전 Text 처리
	 * 
	 * @param content
	 * @return
	 */
	private String editorTextBefore(String content) {
		String before;

		// ![를 기준으로 문자열을 분리
		String[] parts = content.split("!\\[", 2);

		if (parts.length == 2) {
			before = parts[0];
			// 이미지가 존재하는 경우
			return before;
		} else {
			// 이미지가 존재하지 않는 경우
			return content;
		}
	}

	/**
	 * Toast Editor Text 처리 Image 후 Text 처리
	 */
	private String editorTextAfter(String content) {
	    // 정규 표현식 패턴 설정
	    String pattern = "base64,.*?\\)";
	    
	    // 패턴에 맞춰 문자열을 분할
	    String[] parts = content.split(pattern);
	    
	    // 패턴 이후에 오는 문자열이 필요하므로 parts의 마지막 요소를 반환
	    String after = parts.length > 1 ? parts[parts.length - 1].trim() : "";
	    
	    // 디버그 출력
	    
	    return after;
	}

	/**
	 * String => UUID => String
	 * 
	 * @param fileName
	 * @return
	 */
	public String convertUUID(String fileName) {
		String uuidStr;

		// 파일 이름에서 확장자 확인
		int dotIndex = fileName.lastIndexOf(".");
		if (dotIndex != -1) {
			// 확장자가 있는 경우
			String nameWithoutExtension = fileName.substring(0, dotIndex);
			UUID uuid = UUID.nameUUIDFromBytes(nameWithoutExtension.getBytes());
			uuidStr = uuid.toString();
		} else {
			// 확장자가 없는 경우
			UUID uuid = UUID.randomUUID();
			uuidStr = uuid.toString();
		}

		return uuidStr;
	}

	/**
	 * 사용중인 companySeq 가 테이블에 존재하는지 확인
	 * 
	 * @return boolean
	 */
	public boolean selectExistCompanySeq(int companySeq, String tableNm) {
		int exist = comnUtilMapper.selectExistCompanySeq(companySeq, tableNm);

		if (exist == 0) {
			return false;
		} else {
			return true;
		}
	}

	/**
	 * edt_file_mng 테이블에 file 데이터 저장
	 * 
	 * @param uploadFileReq
	 * @return
	 */
	public String insertFileUpload(UploadFileReq uploadFileReq) {
		try {
			comnUtilMapper.insertUploadFileData(uploadFileReq);
			return "SUCC";
		} catch (Exception e) {
			e.printStackTrace();
			return "FAIL";

		}
	}
	
}
