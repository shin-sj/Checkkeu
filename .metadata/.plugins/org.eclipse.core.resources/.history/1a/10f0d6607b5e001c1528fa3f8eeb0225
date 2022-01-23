<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세보기</title>
<script>
function postDelete() {
	return confirm("정말 삭제하시겠습니까?");		
}
function replyDelete() {
	return confirm("댓글을 삭제하시겠습니까?");		
}
//답변 등록
function createReply(f) {
	var userId = "${userId}";

	if (userId == "null") {
		alert("로그인이 필요합니다.");
		return false;
	}
	if (f.replyContent.value == "") {
		alert("내용을 입력하십시오.");
		f.replyContent.focus();
		return false;
	}
	f.submit();
}

function countp(type)  {
	  // 결과를 표시할 element
	  const resultElement = document.getElementById('result_p');
	  
	  // 현재 화면에 표시된 값
	  let number = resultElement.innerText;
	  
	  // 더하기
	  if(type === 'plus') {
	    number = parseInt(number) + 1;
	  }
	  
	  // 결과 출력
	  resultElement.innerText = number;
	}
function countm(type)  {
	  // 결과를 표시할 element
	  const resultElement = document.getElementById('result_m');
	  
	  // 현재 화면에 표시된 값
	  let number = resultElement.innerText;
	  
	  //빼기
	  if(type === 'minus')  {
		    number = parseInt(number) - 1;
	  }
	  
	  // 결과 출력
	  resultElement.innerText = number;
	}

</script>
<!--  postDetail 스타일시트 -->
<link rel="stylesheet"
	href="<c:url value='/css/post/postDetail.css' />" type="text/css">

</head>
<body>
	
<!-- header -->
 <jsp:include page="/WEB-INF/home/header.jsp"/>
	<div class="container">
        	<h5><span>글 상세보기</span></h5>
	<table>
    
	  	  <tr>
			<th>제목</th>
			<td>${post.title}</td>
		  </tr>
		  <tr>
			<th>작성자</th>
			<td>${post.userId}</td>
		  </tr>
		  <tr>
			<th>날짜</th>
			<td>${post.writeDate}</td>
		  </tr>
		  <tr>
			<th>내용</th>
			<td>${post.content}</td>
		  </tr>
	
	</table>
	
	<!-- 동의/비동의  like가 눌리면 dislike 선택이 해체 되는 방식-->
	<div class="feeling_div" >
			<div class="button-container like-container">
			    <button class="feeling_a"/>
			      <i>♥Like</i>
			      <div id='result_p'>${a.agree}</div>   
			  </div>
			  <div class="button-container dislike-container">
			    <button class="feeling_a" onclick='countm("minus")'/>
			      <i>♡Dislike</i>  <!--{ $like_sum }-->
			      <div id='result_m'>0</div>
			</div>
	</div>
	
	<!-- 동의/비동의  SQL문 삽입 필요-->
	
	<!-- 댓글 쓰기 -->
	<div style="margin-top: 50px;">
	<form name="agreeForm" method="POST" action="<c:url value='/post/agree'></c:url>">
		<div style="text-align:center;">
		<input type="radio" name="agree" value="agree" checked="checked" class="feeling_a">AGREE
		<input type="radio" name="agree" value="disagree" class="feeling_a">DISAGREE
		<input type="text" name="postNum" size=20  value="${post.postNum}" style="display: none;"> 
		<button type="submit" >Sure?</button>
		</div>
	</form>
	<form name="form" method="POST" action="<c:url value='/post/reply/add'>
	</c:url>">
		<input type="text" name="postNum" size=20  value="${post.postNum}" style="display: none;"> 
		<input type="text" name="agree" size=20  value='n' style="display: none;">  
		<input type="text" name="disagree" size=20  value='n' style="display: none;"> 
		<input type="text" name="replyContent" placeholder="댓글을  작성하세요" style="width:85%; height: 50px; border-radius: 8px; border: none; background-color: #F5F5F5;">

		<button type="button" class="w-btn-green"  style="border: none; height: 50px; width: 50px; border-radius: 8px; " onClick="createReply(this.form)">등록</button> &nbsp;
	</form>
	</div><br/>

	<%
		request.setAttribute("userId", request.getParameter("userId"));
	%>
	
	<div>
	<c:forEach var="cm" items="${replyList}" varStatus="status" >
	<div style="padding-left: 30px; padding-right: 30px; width:85%; height: 50px; border: solid #F5F5F5 1px; background-color: none;">${cm.replyContent}
		<!-- reply에 userId필요 :추후 수정 -->
		<c:choose>
			<c:when test="${userId=='dbpro0102'}">
				<a style="text-align: right; padding-right: 10px; font-size: 10px;" id="btn" href="<c:url value="/post/reply/delete">
					  	<c:param name='replyNum' value="${cm.replyNum}"/>
						<c:param name='postNum' value="${post.postNum}"/>
				 </c:url>" onclick="replyDelete()">  삭제</a> 
			</c:when>  
		</c:choose>
	</div>
				 
	</c:forEach>			 
	</div>

	<!-- 수정, 삭제, 목록  -->
	<div style="text-align: center; padding: 50px;">
	<c:choose>
         	<c:when test="${userId eq post.userId}">
	          	<a id="btn" href="<c:url value="/post/update">
		     		   <c:param name='postNum' value="${post.postNum}"/>
				  </c:url>">수정</a>		  
	    		<a id="btn" href="<c:url value="/post/delete">
					   <c:param name='postNum' value="${post.postNum}"/>
				 </c:url>" onclick="postDelete()">삭제</a> 
         	</c:when>  
         	
    </c:choose>
	    <a id="btn" href="<c:url value='/post/list' />">목록</a> 
    
    </div>

</div>

</body>
</html>