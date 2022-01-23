<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkkeu홈페이지</title>

<!--  header 스타일시트 -->
<link rel="stylesheet" href="<c:url value='/css/home/header.css' />"
	type="text/css">
</head>
<body>
<%
	request.setAttribute("userId", request.getParameter("userId"));
%>
   <ul>
        <li><img style="padding-top: 14px; padding-left: 15px; padding-right: 15px;" class ="logo" src="<c:url value='/images/logo_checkkeu.png'/>" height="20px"></li>
         <li><a class="active" href="<%= request.getContextPath() %>/index.jsp">Home</a></li>
         <li><a href="<c:url value="/policy/list"></c:url>">청년정책찾기</a></li>  
         <!-- /policy/list -->
         <li><a href="<c:url value='/post/list'/>">정책제안게시판</a></li>

      <div style="margin-right: 50px;"> 
         <c:choose>
         <c:when test="${userId=='dbpro0102'}">
            <li class="nav-left"><a href="<c:url value="/user/logout"></c:url>">Logout</a></li>
           
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
            <li class="nav-left" style="color: #8080FF; margin-top: 13px; margin-right: 10px;">${userName}님   </li>  
         </c:when>
           </c:choose> 
      </div>
         
        </ul>
</body>
</html>