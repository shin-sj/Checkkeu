<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/home/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scrap</title>
<!--  scrap 스타일시트 -->
<link rel="stylesheet"
	href="<c:url value='/css/user/scrap.css' />" type="text/css">
</head>
<body>

 <h3 style="margin-top: 100px; margin-bottom: 30px; margin-left: 100px;">스크랩한 정책 </h3>
 <div class="container">
	<div>
		<jsp:include page="/WEB-INF/user/calendar.jsp" />
	</div>
	<div>
	<c:choose>
		<c:when test="${empty scrapDateList}">
		<br><br>
		<div id="wrapper">
			<img src="https://ifh.cc/g/eOQkpg.png" class="img-responsive"
					alt="scrapimg" style="width:80px; height:80px;">
				<h4>스크랩을 추가해보세요</h4>
				<p style="font-size:13px;">스크랩항목이 없습니다</p>
				<br><br>
				<div>
					<button onclick="location.href='/policy/search' ">+ Add</button>
					<!-- <button onclick="location.href='/test2/policy/search' ">+ Add</button> -->
				</div>
		</div>
		</c:when>
	</c:choose>
	
	<c:choose>
		<c:when test="${not empty scrapDateList}">  
		
			<table class="scrapTable">
		      <thead>
		      	<tr class="scrapTr">
			      	<td class="scrapTd"><b>정책유형</b></td>
			      	<td class="scrapTd"><b>정책명</b></td>
				</tr>
		      </thead>
		      <tbody>  
				<c:forEach var="scrap" items="${scrapDateList}">
					<tr class="scrapTr">
					<td class="scrapTd" style="width: 30%;">
						${scrap.category} 
					</td>
					  <td class="scrapTd"><a class="aStyle" style="text-decoration: none;" href="<c:url value='/policy/view'>
								      <c:param name='policyId' value='${scrap.policyId}'/>
								   </c:url>">
						  ${scrap.name} </a>
					  </td>
						
					</tr>
				</c:forEach>
			  </tbody>
			</table>	
	
		</c:when>
	</c:choose>	
	 
	</div>
</div>
	


</body>
</html>
 <%@ include file="/WEB-INF/home/footer.jsp" %>