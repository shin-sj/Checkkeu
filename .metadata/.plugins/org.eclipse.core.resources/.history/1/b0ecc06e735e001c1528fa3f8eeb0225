<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%  // DAO를 사용한 트랜젝션
int arr[] = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정책 상세보기</title>
<!--  policyDetail 스타일시트 -->
<link rel="stylesheet"
	href="<c:url value='/css/policy/policyDetail.css' />" type="text/css">
<style>

	input {
		border: solid 1px lightgray;
		height: 35px;
		width: 90px;
		background:none;
		border-radius: 5px;
		
	}
	#scrapButton{
		display: flex;
	  	justify-content: center;
	  	margin: 30px;
		
	}
	input:hover {
	//	background: lightgray;	
	}

</style>
</head>
<script>
	function scarpCreate() {
		
		alert("스크랩되었습니다");
		form.submit();	
	}
	
	function scarpCancel() {
		//  삭제 여부 확인
		   var r = confirm("스크랩을 취소 하시겠습니까?");
		   
		   if (r) {
			   alert("스크랩 취소되었습니다");
				form.submit();	
		   }
		}
	</script>
<body>

	<!-- header -->
	<jsp:include page="/WEB-INF/home/header.jsp" />

	<br />
	<%
	request.setAttribute("userId", request.getParameter("userId"));
	request.setAttribute("policyId", request.getParameter("policyId"));
%>

	<!-- 상세보기 -->
	<div id="detail">
		<h3>${policy.name}</h3>
	
		${policy.contents} <br> <br> <b>지원대상</b><br> <br>
		<table>
			<tr>
				<th>자격 요건</th>
				<td>${policy.qualificationForApplication}</td>
			</tr>
			<tr>
				<th>지역</th>
				<td>${policy.local}</td>
			</tr>
			<tr>
				<th>나이</th>
				<td>${policy.startAge}-${policy.endAge}</td>
			</tr>
			<tr>
				<th>소득분위</th>
				<td>${policy.income}분위 이하</td>
			</tr>
		</table>
		<br> <b>신청 방법</b><br> <br>
		<table>
			<tr>
				<th>지원기간</th>
				<td>${policy.startDate}-${policy.endDate}</td>
			</tr>
			<tr>
				<th>지원방법</th>
				<td>${policy.howToApply}</td>
		</table>
		<br>

		<div>
			<c:choose>
				<c:when test="${userId=='dbpro0102'}">
					<a
						href="<c:url value="/policy/update">
	            	<c:param name="policyId" value="${policy.policyId}" />
	            </c:url>"
						style="text-decoration-line: none;">수정</a>
					<a
						href="<c:url value="/policy/delete">
	            	<c:param name="policyId" value="${policy.policyId}" />
	            </c:url>"
						style="text-decoration-line: none;">삭제</a>
				</c:when>
				<c:when test="${userId!='dbpro0102'}">
					<!-- 스크랩하기 -->
					<div id="scrapButton">
						    
				    	<c:set var="flag" value="0"/>
				    	<!-- scrapDateLisit가 비어있지 않을 때  -->
				    	<c:if test="${not empty scrapDateList}">
						   <c:forEach var="scrap" items="${scrapDateList}">
						   	<!-- 스크랩된 상태일때 > flag 값 1로 변경  -->
						      <c:if test="${policyId == scrap.policyId && userId == scrap.userId }">
						      	<c:set var="flag" value="1"/>			      
						      </c:if>	      
						   </c:forEach>
						</c:if>
						
						<c:if test="${flag == 1}">
						   <a style="margin-left: -10px;"
						                  href="<c:url value="/policy/scrap/cancel">
						                  <c:param name="policyId" value="${policy.policyId}" />
						               </c:url>">
						                  <input type="button" value="스크랩 취소" onClick="scarpCancel()">
						         </a>
						</c:if>
						<c:if test="${flag ne 1 }">
							<form name="form" method="POST"
										action="<c:url value='/policy/scrap/add' />">
										<input type="text" name="userId" size=20 value="${userId}"
											style="display: none;"> <input type="text"
											name="policyId" size=20 value="${policyId}"
											style="display: none;"> <input type="button"
											value="스크랩" onClick="scarpCreate()">
									</form>
						</c:if>
					</div>
				

				</c:when>
			</c:choose>
		</div>
	</div>

</body>
</html>

<%@ include file="/WEB-INF/home/footer.jsp"%>