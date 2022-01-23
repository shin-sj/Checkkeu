<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--  userForm 스타일시트 -->
<link rel="stylesheet"
	href="<c:url value='/css/user/userForm.css' />" type="text/css">
<script>
function userCreate(targetUri) {
	form.action = targetUri;
	form.submit();
}
function userUpdate() {
	if (form.userId.value == "") {
		alert("아이디를 입력하십시오.");
		form.userId.focus();
		return false;
	} 
	if (form.password.value == "") {
		alert("비밀번호를 입력하십시오.");
		form.password.focus();
		return false;
	}
	if (form.password.value != form.password2.value) {
		alert("비밀번호가 일치하지 않습니다.");
		form.name.focus();
		return false;
	}
	if (form.name.value == "") {
		alert("이름을 입력하십시오.");
		form.name.focus();
		return false;
	}
	
	var emailExp = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	if(emailExp.test(form.email.value)==false) {
		alert("이메일 형식이 올바르지 않습니다.");
		form.email.focus();
		return false;
	}
	

	var phoneExp = /^\d{2,3}-\d{3,4}-\d{4}$/;
	if(phoneExp.test(form.phone.value)==false) {
		alert("전화번호 형식이 올바르지 않습니다.");
		form.phone.focus();
		return false;
	}
	form.submit();
}
</script>
<title>회원정보수정</title>
</head>
<body>
	
	<!-- header -->
   <jsp:include page="/WEB-INF/home/header.jsp" />
   
   <div class="container">
		<h5><span>회원 정보 수정</span></h5>
        <hr/>
        
<!-- registration form  -->
<form name="form" method="POST" action="<c:url value='/user/update' />">
		 
	    <!-- 회원가입이 실패한 경우 exception 객체에 저장된 오류 메시지를 출력 -->
        <c:if test="${registerFailed}">
	      <font color="red"><c:out value="${exception.getMessage()}" /></font>
	    </c:if>
	    <br>	  
	    
	    <table id=tableStyle align="center">
	  	  <tr>
			<td align = "center"> <font size="2px">아이디</td>
			<td> <input type="text" style="width: 300" name="userId" value="${userId}" readonly> </td>
		  </tr>
		  
	  	  <tr>
			<td align = "center"> <font size="2px">비밀번호</td>
			<td> <input type="password" style="width: 300" name="password" value="${user.password}"> </td>
		  </tr>
		  
	  	  <tr>
			<td align = "center"> <font size="2px">비밀번호 확인</td>
			<td> <input type="password" style="width: 300" name="password2"  value="${user.password}"> </td>
		  </tr>
		   <tr>
			<td align = "center"> <font size="2px">이름</td>
			<td width="250">
				<input type="text" style="width: 300" name="name"  value="${user.name}" 
				 	<c:if test="${registerFailed}">value="${member.name}"</c:if>>
			</td>
		  </tr>
		  
		    <tr>
			<td align = "center"> <font size="2px">이메일</td>
			<td>
				<input type="text" style="width: 300" name="email"  value="${user.email}"
					<c:if test="${registerFailed}">value="${member.email}"</c:if>>
			</td>
		  </tr>
		  
	  	 
		    <tr>
			<td align = "center"> <font size="2px">생년월일</td>
			<td> <input type="text" style="width: 300" name="birth" value="${user.birth}" readonly> </td>
		  </tr>
		
		  
	  	  <tr>
			<td align = "center"> <font size="2px">전화번호</td>
			<td>
				<input type="text" style="width: 300" name="phone"  value="${user.phoneNumber}" 
					<c:if test="${registerFailed}"> value="${member.phone}"</c:if>>
			</td>
		  </tr>
		  
	    </table>
	    <br>
	    
	    <table align="center">
		  <tr>
			<td>
			<input type="button" value="회원정보수정" onClick="userUpdate()"> &nbsp;
			</td>
		  </tr>
		  <tr>
			<td>
			<input type="button" value="회원탈퇴" onClick="location.href='<c:url value="/user/delete">
	            	<c:param name="userId" value="${user.userId}" />
	            </c:url>'"> 
			</td>
		  </tr>	  
		
	    </table>
</form>
</div>
 <!-- footer -->
		<jsp:include page="/WEB-INF/home/footer.jsp"/>
</body>
</html>