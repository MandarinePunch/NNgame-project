<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!Doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- bootstrap css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
<!-- 페이지 css 링크 -->
<link rel="stylesheet" href="/css/style.css" />
<link href="/img/logo/logo.png" rel="shortcut icon" type="image/x-icon">

<title>문의 글 수정</title>
</head>
<body>
	<!-- header -->
	<%@ include file="/tags/header.jsp"%>

	<!-- main -->
	<main>
		<form action="/support/updateOk.io" method="post" class="checkForm">
			<div class="qna__write">
				<div>
					<div class="qna__write-title">문의</div>
					<div class="qna__write-box">
						<select class="form-select qna__form-select checkSelect" aria-label="Default select example" name="support_type">
							<option selected value="0">---문의 내용을 선택해주세요---</option>
							<option value="환불">환불</option>
							<option value="기타">기타</option>
						</select>
					</div>
				</div>
				<div>
					<div class="qna__write-title">제목</div>
					<div class="qna__write-box">
						<div class="form-floating">
							<input type="text" class="form-control checkTitle" id="floatingInput"
								placeholder="name@example.com" style="width: 600px;" value="${supportDTO.support_title }" name="support_title" maxlength="15">
							<label for="floatingInput">title</label>
						</div>
					</div>
				</div>
				<div>
					<div class="qna__write-title">내용</div>
					<div class="qna__write-box">
						<div class="form-floating">
							<textarea class="form-control checkComments" placeholder="Leave a comment here"
								id="floatingTextarea2" style="height: 300px; width: 600px;" name="support_content"
								maxlength="300">${supportDTO.support_content }</textarea>
							<label for="floatingTextarea2">Comments</label>
							<span class="qna__comment-count commentsLength"></span>
						</div>
					</div>
				</div>
				<div class="qna__write-box">
					<button type="submit" class="btn submit-btn">수정하기</button>
					<input type="hidden" name="support_num" value="${supportDTO.support_num }">
				</div>
			</div>
		</form>
	</main>

	<!-- footer -->
	<%@ include file="/tags/footer.jsp"%>

	<!-- 글 수정 validation 체크 -->
	<script src="/js/qna/qna_modify.js"></script>

	<!-- bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>