package standardhompage.admin.popup.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import standardhompage.dto.admin.AdminInfoRes;
import standardhompage.dto.adminMenu.AdminMenuRes;
import standardhompage.dto.popup.PopupReq;
import standardhompage.dto.popup.PopupRes;

@Mapper
public interface PopupMapper {
	
	public void insertPopupData(PopupReq popupReq);
	
	public void updatePopupData(@Param("popupReq") PopupReq popupReq, @Param("popup_seq") int popup_seq);
	
	public int deletePopupData(@Param("popup_seq") int popup_seq);
	
	public List<PopupRes> getPopupList(
			   @Param("pageSize") int pageSize,
			   @Param("offset") int offset,
			   @Param("searchCate") String searchCate,
			   @Param("keyword") String keyword,
			   @Param("popup_seq") int popup_seq);
	
	public int getPopupListCnt(@Param("searchCate")String searchCate, @Param("keyword") String keyword);
	
}
