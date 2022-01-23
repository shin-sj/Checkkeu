<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyMMdd");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성</title>
<!--  postWrite 스타일시트 -->
<link rel="stylesheet"
	href="<c:url value='/css/post/postWrite.css' />" type="text/css">
<script type="text/Javascript">
	function postWrite() {
		if (form.title.value == "") {
			alert("제목을 입력하세요.");
			form.title.focus();
			return false;
		} 
		else if (form.content.value == "") { 
			alert("내용을 입력하십시오.");
			form.content.focus();
			return false;
		}	
	
		form.submit();
	}
	
</script>
</head>
<body>

<!-- header -->
   <jsp:include page="/WEB-INF/home/header.jsp" />
   
   <div style=" display: flex; justify-content: center;">

 <!--실패한 경우 exception 객체에 저장된 오류 메시지를 출력 -->
	<div>
		<c:if test="${insertFailed}">
			<h6><c:out value="${exception.getMessage()}"/></h6>
		</c:if>
	</div>	 
	
	<%
	request.setAttribute("userId", request.getParameter("userId"));

	%>
	
    <form name="form" method="POST" action="<c:url value='/post/add' ></c:url>">
    <h3 style="margin-top: 100px; margin-bottom: -70px;">정책제안하기 </h3>
    
        <table style="margin-top: 100px;">
              
                <tr>
                <td bgcolor=white>
                
                <table class = "table2">
                        <tr>
                        <td></td>
                        <td><input type="text" name="userId" size=20  value="${userId}" style="display: none;"> </td>
                        </tr>
 
                        <tr>
                        <td>제목</td>
                        <td> <input type="text" name="title" size=30 style="width: 568px; height: 20px; margin-left: 10px;"
	            			<c:if test="${creationFailed}"> value="${post.title}"</c:if>>	  </td>
                        </tr>
 
                        <tr>
                        <td>내용</td>
                        <td><textarea name="content" cols=85 rows=15 style="width: 570px; margin-left: 10px;"></textarea></td>
                        </tr>
                        <!-- 임시/ test용  -->
  						<tr>
                        <td></td>
                        <td> <input type="text" name="writeDate" size=20 style="display: none;" value="<%= sf.format(nowTime) %>" >
	            				  </td>
                        </tr>
                        <tr>
                        <td></td>
                        <td> <input type="text" name="policyId" size=20 value=1 style="display: none;">
	            			  </td>
                        </tr>
                        </table>
 
                </td>
                </tr>
        </table>
        
  		<div class="btn-div">
  			<input class="inputStyle" type="button" value="등록" onClick="postWrite()"> &nbsp;
	   	 	<input class="inputStyle" type="reset" value="초기화">
	    </div>
		
    </form>
</div>

  <!-- footer -->
		<jsp:include page="/WEB-INF/home/footer.jsp"/>
</body>
</html>