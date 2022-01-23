<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>정책수정</title>
<!-- policyForm 스타일시트 -->
<link rel="stylesheet"
	href="<c:url value='/css/policy/policyForm.css' />" type="text/css">
<script>

   function policyCreate(targetUri) {
       form.action = targetUri;
       form.submit();
   }  
   function policyCreate() {
      if (form.name.value == "") {
            alert("정책이름을 입력하십시오.");
            form.name.focus();
            return false;
         }
      if (form.contents.value == "") {
            alert("정책내용을 입력하십시오.");
            form.contents.focus();
            return false;
      }
      if (form.qualificationForApplication.value == "") {
            alert("자격요건을 입력하십시오.");
            form.qualificationForApplication.focus();
            return false;
      } 
     
      if (form.startAge.value == "") {
            alert("나이를 입력하십시오.");
            form.startAge.focus();
            return false;
      }
      if (form.endAge.value == "") {
            alert("나이를 입력하십시오.");
            form.endAge.focus();
            return false;
      }
    <!-- 
      if (form.startDate.value == "") {
            alert("지원기간을 입력하십시오.");
            form.startDate.focus();
            return false;
         } 
      if (form.endDate.value == "") {
            alert("지원기간을 입력하십시오.");
            form.endDate.focus();
            return false;
         } 
      -->
      if (form.howToApply.value == "") {
               alert("지원방법을 입력하십시오.");
               form.howToApply.focus();
               return false;
         }
      form.submit();
   }
   
   
   </script>  
   
</head>
<body>
<!-- header -->
 <jsp:include page="/WEB-INF/home/header.jsp"/>
  <br/><br/>
      <div class="container">
      <h5><span>정책등록</span> 페이지입니다.</h5>
        <hr/>      
       
   <form name="form" method="POST" action="<c:url value='/policy/update'>
	<c:param name="policyId" value="${policy.policyId}" />
	</c:url>">
   <table id= tableStyle>
   
   <tr>
   <td id = textStyle>정책이름</td> 
   <td><input type="text" name="name" value="${policy.name}" ></td>
   </tr>
   <tr>
   <td id = textStyle>정책내용 </td><td><textarea style="border-radius: 5px; border: 1px solid lightgray;" name="contents" rows="5" cols="42.5"  >${policy.contents}</textarea></td>
   </tr>
   <tr>
   <td id = textStyle>정책유형</td>
   <td>
    <select name="category" style="width: 300px; height: 30px;">
              <option value="취업지원" > 취업지원 </option>
              <option value="창업지원"> 창업지원 </option>
              <option value="주거금융" > 주거금융 </option>
              <option value="생활복지"> 생활복지 </option>
              <option value="정책참여" > 정책참여</option>
           
        </select> 
     </td> 
            
     </tr>
   
   <tr>
   <td id = textStyle>지원기간</td><td> <input id="date" type="date" name="startDate" value=${policy.startDate}> - <input id="date" type="date" name="endDate" value=${policy.endDate}><br/></td>
   </tr>
   <tr>
   <td id = textStyle>정책요약</td> 
   <td><input type="text" name="policySummary" value="${policy.policySummary}"></td>
   </tr>
   
   <tr>
   <td id = textStyle>자격요건</td> <td>  <input type="text" name="qualificationForApplication" value="${policy.qualificationForApplication}"><br/></td>
   </tr>
   <tr>
   <td id = textStyle>지원방법</td><td> <input type="text" name="howToApply" value="${policy.howToApply}"><br/></td>
   </tr>
   <tr>
   <td id = textStyle>지역 </td> 
   <td>
    <select name="local" style="width: 300px; height: 30px;">
              <option value="전국" > 전국 </option>
              <option value="서울" > 서울 </option>
              <option value="경기도"> 경기도 </option>
              <option value="인천" > 인천 </option>
              <option value="전라도"> 전라도 </option>
              <option value="경상도" > 경상도</option>
              <option value="강원도" > 강원도 </option>
              <option value="충청도"> 충청도 </option>
              <option value="제주도" > 제주도</option>
           
        </select> 
     </td> 
     
   </tr>
   <tr>
   <td id = textStyle>나이</td><td> <input id="age" type="text" name="startAge" value="${policy.startAge}"> - <input id="age" type="text" name="endAge" value="${policy.endAge}"><br/></td>
   </tr>
   
   <tr>
   <td id = textStyle>소득분위</td>   
   <td>
     <input type="text" name="income" value="${policy.income}">
    </td> 
   </tr>
   
   </table>
   <table style="margin-top: 50px; "align="center" >
        <tr>
         <td>
         <input type="button" value="정책등록" onClick="policyCreate()"> 
         </td>
        </tr>
   </table>
</form>
</div>
 <!-- footer -->
	<jsp:include page="/WEB-INF/home/footer.jsp"/>
</body>
</html>