<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<!-- This site was created in Webflow. http://www.webflow.com -->
<!-- Last Published: Fri Nov 13 2020 00:19:47 GMT+0000 (Coordinated Universal Time) -->
<html data-wf-page="5b2a8936920a795ded639904">
<head>
<meta charset="UTF-8" />
<title>Checkkeu홈페이지</title>
<style>
	ul {
       list-style-type: none;
       margin: 0;
       padding: 0;
       background-color: #333;
   }
   ul:after{
       content:'';
       display: block;
       clear:both;
   }
   li {
       float: left;
   } 
   li a {
       display: block;
       color: white;
       text-align: center;
       padding: 14px 16px;
       text-decoration: none;
   }
   li a:hover:not(.active) {
       background-color: #111;
       color: white;
   }
   .active {
       background-color: #8080FF;
   }
   #board, #bList, #pageForm {
               text-align :center;
   }
   
   .nav-left {
       background-color: #333;
      float: right;
      
   }
 
</style>
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="Webflow" name="generator" />
<link
	href="https://assets.website-files.com/5b2a8936920a797db4639905/css/uncommon-template.webflow.82d4bc3aa.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js"
	type="text/javascript"></script>
<script type="text/javascript">
	WebFont
			.load({
				google : {
					families : [
							"Varela Round:400",
							"Roboto:100italic,300,300italic,regular,italic,500,500italic,700,700italic,900,900italic:vietnamese,cyrillic-ext,greek-ext,greek,latin-ext,latin,cyrillic" ]
				}
			});
</script>
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif]-->
<script type="text/javascript">
	!function(o, c) {
		var n = c.documentElement, t = " w-mod-";
		n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch
				&& c instanceof DocumentTouch)
				&& (n.className += t + "touch")
	}(window, document);
</script>
</head>
<body>
<%
	request.setAttribute("userId", request.getParameter("userId"));
%>
   <ul>
        <li><img style="padding-top: 14px; padding-left: 0px; padding-right: 15px;" class ="logo" src="<c:url value='/images/logo_checkkeu.png'/>" height="35px"></li>
         <li><a class="active" href="<%= request.getContextPath() %>/index.jsp">Home</a></li>
         <li><a href="<c:url value="/policy/search"></c:url>">정책찾기</a></li>  
         <!-- /policy/list -->
         <li><a href="<c:url value='/post/list'/>">정책제안게시판</a></li>

      <div style="margin-right: 50px;"> 
         <c:choose>
         <c:when test="${userId=='dbpro0102'}">
            <li class="nav-left"><a href="<c:url value="/user/logout"></c:url>">Logout</a></li>
            <li class="nav-left"><a href="<c:url value="/mypage"> <c:param name='user_id' value='${userId}'/></c:url>">마이페이지</a></li>
            <li class="nav-left"><a href="<c:url value="/policy/insert"></c:url>">정책등록</a></li>
            <li class="nav-left" style="color: red; margin-top: 14px; margin-right: 5px;">관리자계정<li>
         </c:when>    
         <c:when test="${userId==NULL}"> 
            <li class="nav-left"><a href="<c:url value="/user/login"></c:url>">Login</a></li>
               <li class="nav-left"><a href="<c:url value="/user/register"></c:url>">Sign up</a></li>
         </c:when>
         <c:when test="${userId!=NULL}">    
            
               <li class="nav-left"><a href="<c:url value="/user/logout"></c:url>">Logout</a></li>
                <li class="nav-left"><a href="<c:url value="/mypage"><c:param name='userId' value='${userId}'/></c:url>">마이페이지</a></li>
            <li class="nav-left" style="color: #8080FF; margin-top: 13px; margin-right: 10px; font-size: 16px;">${userId}님   </li>  
         </c:when>
           </c:choose> 
      </div>
         
        </ul>
	<div data-collapse="none" data-animation="default" data-duration="400"
		data-easing="ease" data-easing2="ease" role="banner"
		class="navbar w-nav">
		<a href="/" aria-current="page" class="brand w-nav-brand w--current"><img
			src="https://ifh.cc/g/eOQkpg.png" width="100" height="100" alt="" /></a>
		<div class="w-nav-button">
			<div class="w-icon-nav-menu"></div>
		</div>
	</div>
	<div data-w-id="8d967f30-0f60-53ad-afff-f6be8eeb33d6"
		class="hero wf-section">
		<img
			src="https://assets.website-files.com/5b2a8936920a797db4639905/5b2a8936920a7989fd639958_arrow.svg"
			alt="" class="arrow" />
		<div data-w-id="8379a733-d2be-9ef6-7d74-5aa993d72c65"
			class="wrapper-title">
			<div class="_w-h1">
				<h1 data-w-id="eca8521f-4208-5159-fae5-908e9ea99674"
					style="-webkit-transform: translate3d(0, 110%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 110%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 110%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 110%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
					class="main-h1 home">Hello,</h1>
			</div>
			<div class="_w-h1">
				<h1 data-w-id="a5b9f386-66ee-dfd4-322d-966155820ac1"
					style="-webkit-transform: translate3d(0, -100%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, -100%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, -100%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, -100%, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
					class="main-h1 bold home">I'm Checkkeu</h1>
			</div>
			<div data-w-id="01ca0c99-bc4a-9067-fcdd-21f3e0abdd06"
				style="-webkit-transform: translate3d(0, 200PX, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -moz-transform: translate3d(0, 200PX, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); -ms-transform: translate3d(0, 200PX, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0); transform: translate3d(0, 200PX, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0)"
				class="home-subhead">
				<p>👋 청년에게 꼭 필요한 사용자 맞춤 청년 정책 검색 웹사이트</p>
			</div>
		</div>
	</div>
	<div class="section main wf-section">
		<div class="w-dyn-list">
			<div role="list" class="w-dyn-items">
				<div role="listitem" class="wrapper w-dyn-item">
					<div
						style="background-image: url(&amp;quot;https://assets.website-files.com/5b2a8f45ee96a605bc64fa2a/5b2aa797cb4b9f560e6f9c55_iGotchu.jpg&amp;quot;)"
						class="column background-image">
						<div class="column _100vh">
							<div class="project-info">
								<div class="number">
									<h2 class="number zero">01</h2>
								</div>
								<h2 class="project-title">정책 검색</h2>
								<p class="project-description">나이, 거주지, 소득분위 등 검색 옵션을 부여하여
									DB에서 해당 정책을 가져옴 회원가입 시에 입력한 본인 정보와 맞는 정책을 보여주는 기능</p>
								<a class="project-link" href="<c:url value='/policy/list'/>">사용자
									맟춤형</a>
							</div>
						</div>
					</div>
				</div>
				<div role="listitem" class="wrapper w-dyn-item">
					<div
						style="background-image: url(&amp;quot;https://assets.website-files.com/5b2a8f45ee96a605bc64fa2a/5b2aa6c65554a74ae32b4ee1_iGotchu%20_blankhand.jpeg&amp;quot;)"
						class="column background-image">
						<div class="column _100vh">
							<div class="project-info">
								<div class="number">
									<h2 class="number zero">02</h2>
								</div>
								<h2 class="project-title">마이페이지</h2>
								<p class="project-description">아이콘을 클릭하여 자신의 관심 분야 정책을 스크랩할
									수 있으며 ‘마이페이지’에서 캘린더 기능을 통해 확인 가능 게시판에 작성한 본인의 게시글 열람 가능</p>
								<a class="project-link" href="<c:url value='/mypage'/>">정책
									스크랩</a>
							</div>
						</div>
					</div>
				</div>
				<div role="listitem" class="wrapper w-dyn-item">
					<div
						style="background-image: url(&amp;quot;https://assets.website-files.com/5b2a8f45ee96a605bc64fa2a/5b2aaba0f57da510851829fc_Sinder3.png&amp;quot;)"
						class="column background-image">
						<div class="column _100vh">
							<div class="project-info">
								<div class="number">
									<h2 class="number zero">03</h2>
								</div>
								<h2 class="project-title">게시판</h2>
								<p class="project-description">사용자가 자유롭게 정책을 제안 및 문제 제기 가능
									찬반, 댓글 기능으로 활발한 소통</p>
								<a class="project-link" href="<c:url value='/post/list'/>"> 정책
									제안 </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="div-block-27">
			<div class="div-block-26">
				<img src="https://ifh.cc/g/eOQkpg.png" width="100" height="100"
					alt="" class="logo-footer" />
				<div class="wrapper-list-links">
					<a href="<%=request.getContextPath()%>/index.jsp"
						class="footer-links">Checkkeu</a><a
						href="https://www.dongduk.ac.kr/kor/main.do" class="footer-links">dongduk
						univ</a><a href="https://cs.dongduk.ac.kr/" class="footer-links">computer
						science</a>
				</div>
				<p class="small-p">
					많은 청년이 정책을 활용했으면 좋겠다는 의도로 주제를 정하게 되었다. <br /> 기존 정책 사이트의 정보를 보여주는
					방식에서 더 나아가 청년들이 적극적으로 의견을 내고 소통할 수 있도록 하며<br /> ”나에게 맞는” 정책을 찾을 수
					있도록 하는 것이 목적이다<em>. </em>
				</p>
				<jsp:include page="/WEB-INF/home/footer.jsp" />
			</div>
		</div>
	</div>
	<script
		src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=5b2a8936920a797db4639905"
		type="text/javascript"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://assets.website-files.com/5b2a8936920a797db4639905/js/webflow.49b6482a5.js"
		type="text/javascript"></script>
	<!--[if lte IE 9]><script src="//cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif]-->
</body>
</html>

