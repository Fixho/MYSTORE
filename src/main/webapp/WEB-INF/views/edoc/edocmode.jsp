<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 네이버 스마트에디터 -->
<script type="text/javascript"
	src="${contextPath}/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>

<!-- jQuery 라이브러리 (한 번만 포함) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>
/* body에들어가는 양식입니다. 원페이지 이신분들은 이거 사용하신됩니다. */
.text-box {
	border-radius: 20px;
	height: 100%;
	width: 100%;
	background-color: white;
	padding: 30px;
}

.ffont1 {
	font-size: 25px;
	line-height: 30px;
	font-weight: 400;
}

.ffont2 {
	font-size: 22px;
	line-height: 30px;
	font-weight: 400;
}

.ffont3 {
	font-size: 18px;
	line-height: 30px;
	font-weight: 400;
}
/* 영역 나누려고 한거라 이건 참고안하셔도됩니다. */
.text-box1 {
	width: 100%;
	height: 100%;
	margin-bottom: 10px;
}

/* 일반 버튼 색상 알잘딱갈센으로 골라서 사용하시면됩니다 (*이것또한 넓이높이만 수정해서 사용하세요) */
.btn-box button {
	margin-right: 10px;
	border-radius: 5px;
	width: 120px;
	height: 30px;
	border: 0px;
}

.btn1 {
	background-color: rgb(248, 103, 103);
	color: white;
}

.btn2 {
	background-color: rgb(179, 179, 179);
	color: white;
}

.btn3 {
	background-color: rgb(72, 72, 234);
	color: white;
}
/* 버튼 호버 스타일*/
.btn-box-hover button {
	margin-right: 10px;
	border-radius: 5px;
	width: 100px;
	height: 30px;
	border: 0px;
	transition-property: background-color;
	transition-duration: 0.5s;
}

.btn1-hover {
	background-color: rgb(248, 103, 103);
	color: white;
}

.btn2-hover {
	background-color: rgb(179, 179, 179);
	color: white;
}

.btn3-hover {
	background-color: rgb(72, 72, 234);
	color: white;
}

.btn1-hover:hover {
	background-color: rgb(196, 55, 55);
	color: white;
}

.btn2-hover:hover {
	background-color: rgb(116, 116, 116);
	color: white;
}

.btn3-hover:hover {
	background-color: rgb(23, 23, 128);
	color: white;
}

/* 넓이 높이만 수정해서 사용하세요 인풋 스타일*/
input {
	border: 1px solid gray;
	border-radius: 2px;
	height: 40px;
	width: 100%;
	border-radius: 5px;
	font-size: 18px;
	box-sizing: border-box;
}

/* topdiv 스타일 start */
#topdiv>#menu_name {
	font-size: 25px;
	line-height: 30px;
	font-weight: 400;
}

#lang {
	margin-left: 60px;
	width: 300px;
	font-size: 18px;
	line-height: 30px;
	font-weight: 400;
	border-radius: 5px;
}

#modal_appr {
	margin-left: 20px;
	width: 150px;
	font-size: 18px;
	line-height: 30px;
	font-weight: 400;
	background-color: rgb(179, 179, 179);
	color: white;
	border: 0px;
	border-radius: 5px;
	transition-property: background-color;
	transition-duration: 0.5s;
}

#modal_appr:hover {
	background-color: rgb(116, 116, 116);
	color: white;
}
/* topdiv 스타일 end */

/* middiv 스타일 start */
#middiv {
	font-size: 18px;
	line-height: 30px;
	font-weight: 400;
}

#content {
	display: flex;
}

#writer {
	background-color: #99A1EF;
	color: white;
	height: 40px;
	width: 140px;
	text-align: center;
	border-top: 1px solid rgb(92, 91, 91);
	border-bottom: 1px solid rgb(92, 91, 91);
	border-radius: 5px;
}

#writer_content {
	background-color: #ffffff;
	color: rgb(0, 0, 0);
	height: 40px;
	width: 200px;
	text-align: center;
	border-top: 1px solid rgb(92, 91, 91);
	border-bottom: 1px solid rgb(92, 91, 91);
	border-radius: 5px;
}

#aprr1 {
	background-color: #99A1EF;
	color: white;
	height: 120px;
	width: 60px;
	text-align: center;
	border-top: 1px solid rgb(92, 91, 91);
	border-bottom: 1px solid rgb(92, 91, 91);
	border-radius: 5px;
}

#aprr1_content {
	background-color: #ffffff;
	color: rgb(0, 0, 0);
	height: 20px;
	width: 120px;
	text-align: center;
	border-top: 1px solid rgb(92, 91, 91);
	border-bottom: 1px solid rgb(92, 91, 91);
	border-radius: 5px;
}

#aprr1_content2 {
	background-color: #ffffff;
	color: rgb(0, 0, 0);
	height: 80px;
	width: 120px;
	text-align: center;
	border-radius: 5px;
}

.container {
	display: flex;
	gap: 30px; /* 요소 간 간격 */
	justify-content: flex-end;
	align-items: flex-end
}

.spacer {
	margin-left: auto; /* 왼쪽 여백을 최대화하여 오른쪽으로 밀기 */
}
/* middiv 스타일 end */

/* middiv2 스타일 start */
#middiv2 {
	display: flex;
}

#form_title {
	background-color: #99A1EF;
	color: white;
	height: 40px;
	width: 140px;
	border-radius: 5px;
	font-size: 18px;
	line-height: 30px;
	font-weight: 400;
	display: flex;
	justify-content: center;
	align-items: center;
}

/* middiv2 스타일 end */

/* middiv3 스타일 start */
input[type=file]::file-selector-button {
	background-color: #99A1EF;
	color: white;
	border: none;
	width: 113.5px;
	height: 47.5px;
	font-size: 18px;
	line-height: 30px;
	font-weight: 400;
}

#fileupload {
	width: 100%
}
/* middiv2 스타일 end */
#smarteditor {
	margin-top: 10px;
}

/* enddiv 스타일 start */
#enddiv {
	margin-top: 40px;
	display: flex;
}
/* enddiv 스타일 end */


</style>
</head>
<body>

	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<jsp:include page="/WEB-INF/views/common/side.jsp" />

	<div class="body-body">
		<div class="text-box">
			<form action="${contextPath}/edoc/edocmodeModify.do" method="post"
				name="editorForm">

				<!-- 처음 start -->
				<div id="topdiv">
					<span class="ffont1" style="font-weight: bold;">문서양식</span>
				</div>
				<!-- 처음 end -->

				<hr>

				<!-- 중간1 start-->
				<div id="middiv">

					<input type="hidden" name="sampleNo" value="${eSample.sampleNo}">
					<div id="content">
						<div id="form_title" style="width: 9%;">양식 유형</div>
						<div class="input-bar" style="width: 30%; padding-left: 10px;">
							<input type="text" class="input-bar1" name="sampleDotCode"
											value="${ eSample.sampleDotCode }">
						</div>
					</div>

					<div id="content" style="margin-top: 10px;">
						<div id="form_title" style="width: 9%;">양식 설명</div>
						<div class="input-bar" style="width: 91%; padding-left: 10px;">
							<input type="text" class="input-bar1" name="sampleDesc"
											value="${ eSample.sampleDesc }">
						</div>
					</div>

				</div>
				<!-- 중간1 end-->

				<hr>

				<!-- 양식내용 -->
				<!-- smarteditor start-->
				<div id="smarteditor" style="margin-top: 10px;">
					<textarea name="editorTxt" id="editorTxt0" rows="15" style="width: 100%"></textarea>
				</div>
				<!-- smarteditor end-->

				<!-- 끝 start-->
				<div id="enddiv">
					<div class="btn-box-hover">
						<button class="btn3-hover" style="width: 120px; font-size: 18px;"
							type="button" onclick="submitForm()">수정하기</button>
					</div>
					<div class="btn-box-hover">
						<button class="btn1-hover"
							style="width: 120px; margin-left: 20px; font-size: 18px;"
							type="button" onclick="history.go(-1);">뒤로가기</button>
					</div>
				</div>
				<!-- 끝 end-->

			</form>
		</div>
	</div>

<script>
	let oEditors = []; // 스마트에디터 초기화 

		$(document).ready(function() {
			// DOM이 완전히 로드된 후에 스마트 에디터 초기화
			if ($("#editorTxt0").length > 0) {
				smartEditor(); // 스마트 에디터 초기화
			}

		});

		function smartEditor() {
			nhn.husky.EZCreator.createInIFrame({
				oAppRef : oEditors, // 스마트 에디터 인스턴스를 oEditors 배열에 할당
				elPlaceHolder : "editorTxt0", // 스마트에디터를 띄울 textarea의 id
				sSkinURI : "${contextPath}/smarteditor/SmartEditor2Skin.html", // 스마트에디터 skin 경로
				htParams : {
					bUseVerticalResizer : false,
					
	        fOnBeforeUnload: function() {
	             return null;  // 페이지 이탈 시 경고창을 띄우지 않음
	        }
				},
				fCreator : "createSEditor2"
			});
		}

		$(document).ready(
				function() {
					// 서버에서 전달된 edoc.content 값을 스마트에디터에 삽입
					var initialContent = "${edocContent}";

					if (initialContent) {
						// 스마트에디터가 정상적으로 초기화되었을 때
						setTimeout(function() {
							oEditors.getById["editorTxt0"].exec("SET_CONTENTS",
									[ initialContent ]);

						}, 500); // 조금 지연시켜서 스마트에디터가 완전히 로드된 후에 내용 삽입
					}
				});

		function preview() {
			// 에디터의 내용을 textarea에 적용
			if (oEditors.length > 0) {
				oEditors[0].exec("UPDATE_CONTENTS_FIELD", []); // 첫 번째 스마트에디터 인스턴스 접근
				// textarea 값 불러오기
				var content = document.getElementById("editorTxt0").value;
				alert(content);
			}
		}
		
		function submitForm() {
			// 스마트에디터 내용 가져오기
			oEditors.getById["editorTxt0"].exec("UPDATE_CONTENTS_FIELD", []);

			// 폼 제출
			document.forms["editorForm"].submit();
		}
	</script>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />

</body>
</html>