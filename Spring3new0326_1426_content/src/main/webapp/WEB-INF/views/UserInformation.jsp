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
						<a href="UserInformation.do" class="gnb_1da"
							style="margin-right: 10px;">회원관리</a>
						<a href="Postmanagement.do" class="gnb_1da">게시글 관리</a>
					</ul>
				</div>
			</div>


			<!-- Shoping Cart Section Begin -->
			<section class="shoping-cart spad">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="panel-body">
								<table class="table table-hover">
									<thead>
										<tr class="info">
											<th id="change_sp" class="shoping__product">번호</th>
											<th>아이디</th>
											<th>이름</th>
											<th>학교명</th>
											<th>활동상태</th>
											<th>학생증</th>
											<th>가입일</th>
										</tr>
									</thead>
									<tbody>
										<c:set var="index" value="1" />
										<c:forEach items="${list}" var="vo">
											<tr>
												<td class="shoping__cart__item">${index}</td>
												<td class="shoping__cart__price"><a
													href="UserContent.do?user_id=${vo.user_id}">
														${vo.user_id} </a></td>
												<td class="shoping__cart__quantity">${vo.user_nm}</td>
												<td class="shoping__cart__total">${vo.user_sc_nm}</td>
												<td class="shoping__cart__item__close">${vo.user_status}</td>
												<td class="shoping__cart__item__close"><c:choose>
														<c:when test="${not empty vo.user_sc_img}">
			            												O
															        </c:when>
																			<c:otherwise>
															            X
															        </c:otherwise>
													</c:choose></td>
												<td class="shoping__cart__item__close">${vo.joined_at}</td>
											</tr>
											<c:set var="index" value="${index + 1}" />
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Shoping Cart Section End -->



			<!-- Footer Section Begin -->
			<footer class="footer spad">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="footer__about">
								<div class="footer__about__logo">
									<!-- 경로 변경할것-->
									<a href="ProductList.do"><img src="./img/중고스쿨초록색로고누끼완.png"
										alt=""></a>
								</div>
								<!-- 하단 회사정보 삭제
                    <ul>
                        <li>Address: 60-49 Road 11378 New York</li>
                        <li>Phone: +65 11.188.888</li>
                        <li>Email: hello@colorlib.com</li>
                    </ul>
                    -->
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">



							<!-- footer 이용약관 청소년보호정책 등 -->

							<div class="footer__widget">

								<!--
                    <h6>Useful Links</h6>-->

								<!-- 
                    <ul>
                        <li><a href="#">이용약관</a></li>
                        <li><a href="#">개인정보처리방침</a></li>
                        
                        <!-- 하단 삭제
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        -->
								</ul>


								<ul>
									<!--
                        <li><a href="#">청소년 보호정책</a></li>
                        <li><a href="#">회사 정보</a></li>
                     -->
									<!--
                        <li><a href="#">Who We Are</a></li>
                        <li><a href="#">Our Services</a></li>
                        
                        <li><a href="#">Projects</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Innovation</a></li>
                        <li><a href="#">Testimonials</a></li>
                         
                    </ul>
                   
                </div>
            </div>


            <!-- 하단 구독메일 삭제
            <div class="col-lg-4 col-md-12">
                <div class="footer__widget">
                    <h6>Join Our Newsletter Now</h6>
                    <p>Get E-mail updates about our latest shop and special offers.</p>
                    <form action="#">
                        <input type="text" placeholder="Enter your mail">
                        <button type="submit" class="site-btn">Subscribe</button>
                    </form>

                    <!-- 우측 하단 위젯 버튼 삭제
                    <div class="footer__widget__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                    
                </div>
                -->
							</div>

						</div>
						<div class="row">
							<div class="col-lg-12">
								<div class="footer__copyright"
									style="background-color: #f2f2f2; padding: 20px;">
									<div class="footer__copyright__text">
										<p>
											<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
											Copyright &copy;
											<script>
												document.write(new Date()
														.getFullYear());
											</script>
											All rights reserved | This template is made with <i
												class="fa fa-heart" aria-hidden="true"></i> by <a
												href="https://colorlib.com" target="_blank">Colorlib</a>
										</p>
									</div>
									<div class="footer__copyright__payment"></div>
								</div>
							</div>
						</div>
					</div>
			</footer>
			<!-- Footer Section End -->


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
