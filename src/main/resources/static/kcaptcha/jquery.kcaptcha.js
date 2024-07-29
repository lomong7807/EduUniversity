var md5_norobot_key = '';
(function($) {
	var kcaptchaPath = "../../kcaptcha";
	if (typeof(KCAPTCHA_JS) == 'undefined') {
		var KCAPTCHA_JS = true;
		$(document).ready(function() {
			if ($('#kcaptcha_image').length > 0) {
				$('#kcaptcha_image').attr('width', '110').attr('height', '34'); //이미지 크기 원하는데로 바꾸..
				$('#kcaptcha_image').attr('title', '글자가 잘안보이는 경우 클릭하시면 새로운 글자가 나옵니다.');
				$('#kcaptcha_image').click(function() {
					$.post(kcaptchaPath + '/kcaptcha_session.php', function(data) {
						$('#kcaptcha_image').attr('src', kcaptchaPath + "/kcaptcha_image.php?t=" + (new Date).getTime());
						md5_norobot_key = data;
					});
				});
			}
			$('#kcaptcha_image').click();
				$('#WriteForm').submit(function() { //사용하려는 폼의 ID 값
					if ($('#writekey') != 'undefined') {
						if (hex_md5($('#writekey').val()) != md5_norobot_key) {
							alert('자동등록방지용 글자가 제대로 입력되지 않았습니다.');
							$('#writekey').select().focus();
							return false;
						}
						//테스트
						else
							alert('통과!');
						}
					return true;
				});
			});
		}
	}
)(jQuery);