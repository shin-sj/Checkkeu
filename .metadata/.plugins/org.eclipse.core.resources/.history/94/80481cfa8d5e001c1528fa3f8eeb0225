<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="/WEB-INF/home/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 글</title>
<!--  userTable 스타일시트 -->
<link rel="stylesheet"
	href="<c:url value='/css/user/userTable.css' />" type="text/css">
</head>
<body>
	<%
		request.setAttribute("userId", request.getParameter("userId"));
	%>
	
	<table>
      <thead>
		<tr>
		  <td style="width: 80%">제목</td>
		  <td>날짜</td>
		</tr>
      </thead>
      <tbody>  	 
		<c:forEach var="post" items="${postList}">	
				<tr>
				  <td style="width: 70%"><a href="<c:url value='/post/view'>
							      <c:param name='postNum' value='${post.postNum}'/>
							   </c:url>">
					  ${post.title} </a>
				  </td>
				  <td>${post.writeDate}</td>
				</tr>
			
		</c:forEach>
	  </tbody>
	</table>


</body>
</html>
 <%@ include file="/WEB-INF/home/footer.jsp" %>