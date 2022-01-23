<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<%@ include file="/WEB-INF/home/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<!--  mypage 스타일시트 -->
<link rel="stylesheet"
	href="<c:url value='/css/user/mypage.css' />" type="text/css">
</head>
<body>

   <input type='checkbox' id='mmeennuu'>
   <label class='menu' for='mmeennuu'>

      <div class='barry'>
         <span class='bar'></span> <span class='bar'></span> <span class='bar'></span>
         <span class='bar'></span>
      </div>

   
   </label>
   <div class="flex-container"
      style="margin-left: 100px; margin-right: 100px">
      <div class="flex">
         <div class="flex fdc">
            <img class="mypage" style="object-fit: fill;"
               src="<c:url value='/images/write.jpg'/>">
           <!-- <a href="<c:url value='/mypage/myPost'/>">
            	<span class="font_ml font_bold"> 작성한글 </span>
            </a>-->
            
            <!-- test -->
            <a href="<c:url value='/mypage/myPost'>
         	<c:param name='order' value='my_post'/></c:url>"><span class="font_ml font_bold"> 작성한글</span></a>
         
         
         </div>
	<%
		request.setAttribute("userId", request.getParameter("userId"));
	%>

         <div class="flex fdc">
            <img class="mypage" style="object-fit: fill;"
                src="<c:url value='/images/comment.jpg'/>">
            <a href="<c:url value='/user/update'>
            <c:param name="userId" value='${userId}' />
            </c:url>">
            	<span class="font_ml font_bold">회원정보수정</span>
            </a>
           
         </div>
         <div class="flex fdc">
            <img class="mypage"
                src="<c:url value='/images/scrap.jpg'/>">
            <a href="<c:url value='/mypage/scrap/view'>
            <c:param name="userId" value="${userId}" />
	            </c:url>">
            	<span class="font_ml font_bold">정책스크랩</span>
            </a>
     
             
            
            
         </div>
         <div class="flex fdc">
            <img class="mypage" style="object-fit: fill;"
               src="<c:url value='/images/calendar.jpg'/>">
             <a href="<c:url value='/mypage/calendar/view'>
            <c:param name="userId" value="${userId}" />
	            </c:url>">
            	<span class="font_ml font_bold">정책일정</span>
            </a>
         </div>
      </div>
   </div>
</body>
</html>