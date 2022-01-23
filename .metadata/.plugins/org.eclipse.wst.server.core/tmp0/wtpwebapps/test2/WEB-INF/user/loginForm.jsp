<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<!--  loginForm 스타일시트 -->
<link rel="stylesheet"
	href="<c:url value='/css/user/loginForm.css' />" type="text/css">
<link rel="stylesheet" href="<c:url value='/css/home/header.css' />"
	type="text/css">
</head>
<body>
<!-- header -->
   <ul>
        <li><img style="padding-top: 14px; padding-left: 15px; padding-right: 15px;" class ="logo" src="<c:url value='/images/logo_checkkeu.png'/>" height="20px"></li>
         <li><a class="active" href="<%= request.getContextPath() %>/index.jsp">Home</a></li>
         <li><a href="<c:url value="/policy/search"></c:url>">청년정책찾기</a></li>  
         <!-- /policy/list -->
         <li><a href="<c:url value='/post/list'/>">정책제안게시판</a></li>

      <div style="margin-right: 50px;"> 
            <li class="nav-left"><a href="<c:url value="/user/login"></c:url>">Login</a></li>
            <li class="nav-left"><a href="<c:url value="/user/register"></c:url>">Sign up</a></li>
      </div>
         
       </ul>
       
   
	<div class="container">
        	<h5><span>로그인</span> 페이지입니다.</h5>
        <hr/>
        <form method="POST" action="<c:url value='/user/login' />">
            <input type="text" placeholder="아이디" name="id" required style="height:30px; width: 380px" /><br />
            <input type="password" placeholder="비밀번호" name="pw" required style="height:30px; width: 380px" /><br />
            <input type="submit" value="  로그인" class="login" style="width: 384px;" />
            <a href="<c:url value='register'/>"><input type="button" value="회원가입 " class="login" style="width: 384px;" /></a>
        </form>
       
       
        
         <hr />
    </div>

   <!-- footer -->
		<jsp:include page="/WEB-INF/home/footer.jsp"/>
</body>
</html>