<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@page import="model.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>정책 찾기</title>
<style type="text/css">

 .aStyle:link { color: black; text-decoration: none;}
 .aStyle:visited { color: black; text-decoration: none;}
 .aStyle:hover { color: #8080FF; text-decoration: underline;}
 
		table {
			border: none;
			border-collapse: collapse;
			margin-top: 30px;
			width: 100%; 
			align: center;
		}
		 th, td {
    		//border: 1px solid #EDEDED;
    		border:none;
			border-bottom: 1px solid #EDEDED;
    		padding: 5px;
 			height: 40px;
  		}
  		
  		
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
		}
		.active {
		    background-color: #8080FF;
		}
		#board, #bList, #pageForm {
		    text-align :center;
		}
		
		.policySearch-div {
			margin-top: 50px;
			width: 80%;
			margin-left: 120px;
			
			}
			
		.btnStyle {
			border: none;
			width: 90px;
			height: 30px;
			border-radius: 20px;
		}
		
		.btnStyle:hover {
			background: lightgray;
		
		}
	
	
		.btn-div{
		 	display: flex;
  			justify-content: center;
  			margin: 30px;
		}

</style>
<script>
function uncheck(){
	$(':checkbox:checked').prop('checked',false);
};
</script>
</head>
<body>
 	<!-- header -->
<jsp:include page="/WEB-INF/home/header.jsp" />
	
<div class="policySearch-div">
	<form method="POST" action="<c:url value='/policy/search' />">
	
		<table>
		<tr>
			<th><b>정책유형</b></th>
			<td><input type="radio" name="contents" value="취업지원">취업지원
			<input type=radio name="contents" value="창업지원">창업지원
			<input type="radio" name="contents" value="주거금융">주거금융
			<input type="radio" name="contents" value="생활복지">생활복지
			<input type="radio" name="contents" value="정책참여">정책참여</td>
		</tr>
		<tr>
			<th><b>소득분위</b></th>
			<td>
			<select id="income" name="income">
			<option value="">분위</option>
			<c:forEach var="i" begin="1" end="10" step="1">
				<option value="${i}">${i}</option>>
			</c:forEach>
			</select>
			</td>
		</tr>
		<tr>
			<th><b>거주지역</b></th>
			<td>
				<input type="radio" name="local" value="전국">전국
				<input type="radio" name="local" value="서울">서울
				<input type="radio" name="local" value="경기도">경기도
				<input type="radio" name="local" value="인천">인천
				<input type="radio" name="local" value="전라도">전라도
				<input type="radio" name="local" value="경상도">경상도
				<input type="radio" name="local" value="강원도">강원도
				<input type="radio" name="local" value="충청도">충청도
				<input type="radio" name="local" value="제주도">제주도
			</td>
		</tr>
		
		<tr>
			<th><b>나이</b></th>
			<td>
				<select id="age" name="age">
				<option value="">나이</option>
				<c:forEach var="i" begin="0" end="30">
					<option value="${i}">${i}</option>
				</c:forEach>
				</select>
		
			</td>
		</tr>
		</table>
	
		<div class="btn-div">
			<input class="btnStyle" type="submit" value="검색">&nbsp;
			<input class="btnStyle" type="button" value="새로고침" onClick="window.location.reload()">
		</div>
		
	</form>

  <!-- 정책 목록 부분 -->
    <br>
    <div id="board">
        <table>
        <thead>
         <tr>
                <td><b>정책명</b></td>
                <td><b>유형</b></td>
                <td style="width: 60%;"><b>요약</b></td>
         </tr>
		</thead>
		<tbody>
        <c:forEach var="policy" items="${polList}">
            <tr>
                <td>
                    <a class="aStyle" style="text-decoration: none;" href="<c:url value='/policy/view'>
                    <c:param name='policyId' value='${policy.policyId}'/>
                    <c:param name="userId" value="${userId}" />
                    </c:url>">
                    ${policy.name}</a>
                </td>
                <td>
                 <!--${policy.category}  -->
                  <c:choose>
					<c:when test="${policy.category=='취업지원'}">
					${policy.category}
					</c:when>
					<c:when test="${policy.category=='창업지원'}">
					${policy.category}
					</c:when>
					<c:when test="${policy.category=='주거금융'}">
					${policy.category}
					</c:when>
					<c:when test="${policy.category=='생활복지'}">
					${policy.category}
					</c:when>
					<c:when test="${policy.category=='정책참여'}">
					${policy.category}
					</c:when>
				</c:choose>
               
                
                </td>
                <td>${policy.policySummary}</td>  
            </tr>  
		</c:forEach>
		</tbody>
        </table>
    </div>
  

     <!-- footer -->
	<jsp:include page="/WEB-INF/home/footer.jsp"/>

</body>
</html>