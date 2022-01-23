<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ include file="/WEB-INF/home/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판</title>
<!--  postList 스타일시트 -->
<link rel="stylesheet"
	href="<c:url value='/css/post/postList.css' />" type="text/css">
</head>
<body>
	<%
	request.setAttribute("userId", request.getParameter("userId"));
	%>
	
	  <c:choose>
	  <c:when test="${userId!=NULL}">    
             <button style="border: none; width: 80px; height: 30px; margin-top: 50px; margin-left: 995px; border-radius: 20px;"><a style="text-decoration : none; color: black;" href="<c:url value='/post/write'/>">글쓰기</a></button>
      </c:when>
      </c:choose>
       
	<table>
      <thead>
		<tr>
		  <td class="titleStyle" style="width: 70%"><b>제목</b></td>
		  <td class="titleStyle"><b>작성자</b></td>
		  <td class="titleStyle"><b>날짜</b></td>
		</tr>
      </thead>
      <tbody>  	 <!-- post 최신 글을 상단으로 올리기  -->
		<c:forEach var="post" items="${postList}">
			<tr>
			  <td style="width: 70%"><a style="text-decoration: none;" href="<c:url value='/post/view'>
						      <c:param name='postNum' value='${post.postNum}'/>
						   </c:url>">
				  ${post.title} </a>
			  </td>
			  <td>${post.userId}</td>
			  <td>${post.writeDate}</td>
			</tr>
		</c:forEach>
	  </tbody>
	</table>		
   
</body>
</html>

 <%@ include file="/WEB-INF/home/footer.jsp" %>