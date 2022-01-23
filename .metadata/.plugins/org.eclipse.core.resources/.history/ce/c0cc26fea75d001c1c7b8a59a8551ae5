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
</head>
<body>
<!-- header -->
   <jsp:include page="/WEB-INF/home/header.jsp" />
   
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