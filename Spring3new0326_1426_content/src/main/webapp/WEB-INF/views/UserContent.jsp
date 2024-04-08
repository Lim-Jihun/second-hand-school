<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 영표쌤이 추가해주심(240329 10:55 팀별 피드백) -->
<style>
@font-face {
	font-family: 'Pretendard-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
		format('woff');
	font-weight: 400;
	font-style: normal;
}

* {
	font-family: 'Pretendard-Regular';
}
</style>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<footer class="footer spad">
		<!-- Humberger Begin -->
		<div class="humberger__menu__overlay container">
			<div class="humberger__menu__wrapper"
				style="display: flex; justify-content: flex-end; align-items: center;">
				<div class="humberger__menu__logo" style="margin-right: auto;">
					<a href="AdministratorList.do"> <img
						src="resources/img/중고스쿨초록색로고누끼완.png"
						style="width: 100px; height: auto;"></a>
				</div>

				<!-- 반응형 웹 창 축소 시 활성화되는 메뉴-->
				<nav class="humberger__menu__nav mobile-menu">
					<ul
						style="display: flex; justify-content: flex-start; align-items: center; margin-left: auto; margin-top: 10px; margin-bottom: 10px;">
						<li style="margin-right: 20px;">
							<!-- 로그인상태면 로그아웃이 보이게하고, 로그아웃상태면 로그인이 보이게 하기 --> <c:choose>
								<c:when test="${not empty sessionScope.info}">
									<a href="logout.do"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-lock" viewBox="0 0 16 16">
                                <path
												d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2m3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2M5 8h6a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1z" />
                            </svg> 로그아웃 <!--로그인 중이면 로그아웃으로 변하게 하는 기능 필요-->
									</a>
								</c:when>
								<c:otherwise>
									<a href="goLogin.do"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-unlock" viewBox="0 0 16 16">
                                <path
												d="M11 1a2 2 0 0 0-2 2v4a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V9a2 2 0 0 1 2-2h5V3a3 3 0 0 1 6 0v4a.5.5 0 0 1-1 0V3a2 2 0 0 0-2-2M3 8a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V9a1 1 0 0 0-1-1z" />
                            </svg> 로그인 <!--로그인 중이면 로그아웃으로 변하게 하는 기능 필요-->
									</a>
								</c:otherwise>
							</c:choose>
						</li>

						<li style="margin-right: 20px;"><c:if
								test="${not empty sessionScope.info}">
								<a href="AdministratorList.do"> <!-- 마이페이지로 이동하게 변경 필요 --> <svg
										xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-file-earmark-person"
										viewBox="0 0 16 16">
                            <path d="M11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0" />
                            <path
											d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2M9.5 3A1.5 1.5 0 0 0 11 4.5h2v9.255S12 12 8 12s-5 1.755-5 1.755V2a1 1 0 0 1 1-1h5.5z" />
                        </svg> 관리자페이지
								</a>
							</c:if></li>

						<li class="active"><a href="ProductList.do"><svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-card-list" viewBox="0 0 16 16">
                         <path
										d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2z" />
                         <path
										d="M5 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 5 8m0-2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5m-1-5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0M4 8a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0m0 2.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0" />
                       </svg>홈페이지</a></li>
					</ul>
				</nav>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<ul id="gnb_1dul">
						<a href="UserContent.do?user_id=${vo.user_id}" class="gnb_2da"
							style="margin-right: 10px;">회원정보수정</a>
						<a href="PostContent.do?user_id=${vo.user_id}" class="gnb_2da">게시글
							내용</a>
					</ul>
				</div>
			</div>
			<section>
				<h5>기본정보</h5>
				<div class="panel panel-default">
					<form action="userInfoChange.do" method="POST">
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="row">이름</th>
									<td>${vo.user_nm}</td>
									<th>아이디</th>
									<td>${vo.user_id}</td>
								</tr>
								<tr>
									<th>학교명</th>
									<td>${vo.user_sc_nm}</td>
									<th>전화번호</th>
									<td><input type="text" name="user_phone"
										value="${vo.user_phone}" class="form-control"></td>
								</tr>
								<tr>
									<th>활동 상태</th>
									<td><select name="user_status">
											<option value="활동중"
												${vo.user_status eq '활동중' ? 'selected' : ''}>활동중</option>
											<option value="활동중지"
												${vo.user_status eq '활동중지' ? 'selected' : ''}>활동중지</option>
											<option value="승인대기"
												${vo.user_status eq '승인대기' ? 'selected' : ''}>승인대기</option>
											<option value="탈퇴"
												${vo.user_status eq '탈퇴' ? 'selected' : ''}>탈퇴</option>
									</select>
									<th style="width: 120px">학생증</th>
									<td><c:choose>
											<c:when test="${not empty vo.user_sc_img}">
												<img src="${vo.user_sc_img}" alt="학생증 사진" width="250px">
											</c:when>
											<c:otherwise>
												<p>등록된 사진이 없습니다</p>
											</c:otherwise>
										</c:choose></td>
								<tr>
									<th style="width: 120px">가입일</th>
									<td>${vo.joined_at}</td>
								</tr>
							</thead>
						</table>
						<!-- 회원상태 수정 기능 관련 -->
						<input type="hidden" name="user_id" value="${vo.user_id}">
						<button type="submit" class="btn btn-info">수정</button>
						<a href="UserInformation.do"
							class="btn btn-danger">취소</a>
					</form>
					<div class="panel-footer" class="btn btn-warning">UserContent.do</div>
				</div>
			</section>
		</div>
			<!-- Js Plugins -->
			<script src="js/jquery-3.3.1.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<script src="js/jquery.nice-select.min.js"></script>
			<script src="js/jquery-ui.min.js"></script>
			<script src="js/jquery.slicknav.js"></script>
			<script src="js/mixitup.min.js"></script>
			<script src="js/owl.carousel.min.js"></script>
			<script src="js/main.js"></script>
</body>
</html>