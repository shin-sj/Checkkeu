<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<style>
		.container {		
			display: flex;
		}

		h5 {
			text-align: center;
		}
		
		h5 span {
			color: teal;
		}
		
	#calendar {
		width: 700px;
		border: none;
		border-collapse : collapse;
		
		margin-right: 20px;

	}
	td{
		width: 100px;
		height: 50px;
		border: solid 0.5px #EDEDED;
		border-collapse : collapse;
	}
	th {
		border: none;
		height: 50px;
	}
	
	.contents {
		margin-bottom: 100px;
		display: flex;
  		justify-content: center;
	}
	
</style>

<script>

	var policyDate = "";
	var today = new Date(); 
    var date = new Date();
    function prevCalendar() {
    	policyDate = "";
     today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
     buildCalendar(); 
    }
    function nextCalendar() {
    	policyDate = "";
         today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
         buildCalendar();
    }
    function buildCalendar(){
    	policyDate="";
        var doMonth = new Date(today.getFullYear(),today.getMonth(),1);
        
        var lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
       
        var tbCalendar = document.getElementById("calendar");

        var tbCalendarYM = document.getElementById("tbCalendarYM");

         tbCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월 "; 
         policyDate += today.getFullYear() + "/";
         policyDate += today.getMonth() + 1 + "/";

        while (tbCalendar.rows.length > 2) {
              tbCalendar.deleteRow(tbCalendar.rows.length-1);
         }
         var row = null;
         row = tbCalendar.insertRow();
         var cnt = 0;
         for (i=0; i<doMonth.getDay(); i++) {

              cell = row.insertCell();
              cnt = cnt + 1;
         }

        var policyDate2 = "";
		for (i = 1; i <= lastDate.getDate(); i++) {
			policyDate2 = policyDate;
			if(i < 10)
				policyDate2 += "0" + i;
			else
				policyDate2 += i; 

            cell = row.insertCell();
   			
           <c:forEach var="scrap" items="${scrapDateList}">
				if(policyDate2 == "${scrap.endDate}"){
					var str = i + "<br>" + "<p style='color: #f29886; font-size: 5px;'>${scrap.name}지원 마감</p>"
	
					cell.innerHTML = str;
					cnt++;
					
					if (cnt % 7 == 0){
						cell.innerHTML = "<font color=#0067a3>" + str;
			            row = calendar.insertRow();
			          }
					if (cnt % 7 == 1){
						cell.innerHTML = "<font color=#FD5E53>" + str;
			          }
					
			          if (today.getFullYear() == date.getFullYear()
			             && today.getMonth() == date.getMonth()
			             && i == date.getDate()) {
			            cell.bgColor = "#fff6bc";
			           }
					 continue;
					}
			</c:forEach>
			<c:forEach var="scrap" items="${scrapDateList}">
				if(policyDate2 == "${scrap.startDate}"){
					
					
					var str = i + "<br>" + "<p style='color: #0096c6; font-size: 5px;'>${scrap.name}지원 시작</p>"

					cell.innerHTML = str;
					cnt++;
					
					if (cnt % 7 == 0){
						cell.innerHTML = "<font color=#0067a3>" + str;
			            row = calendar.insertRow();
			          }
					if (cnt % 7 == 1){
						cell.innerHTML = "<font color=#FD5E53>" + str;
			          }

			          if (today.getFullYear() == date.getFullYear()
			             && today.getMonth() == date.getMonth()
			             && i == date.getDate()) {
			            cell.bgColor = "#fff6bc";
			           }
					 continue;
					}
					
				else{
	            	cell.innerHTML = i;            	
				}
				
            </c:forEach>
            
            cell.innerHTML = i;
            cnt++;
   			
            if (cnt % 7 == 1) {		
		            cell.innerHTML = "<font color=#FD5E53>" + i;
	        }   
	          
	          if (cnt % 7 == 0){
					cell.innerHTML = "<font color=#0067a3>" + i;	          
	               row = calendar.insertRow();
	          }
	          
	          if (today.getFullYear() == date.getFullYear()
	             && today.getMonth() == date.getMonth()
	             && i == date.getDate()) {
	            cell.bgColor = "#fff6bc";
	            
	           }

         }
    }
</script>

</head>
<body>

		<div class="contents">
			<div class="contents-split">
				<table id="calendar">
					<tr>
						<th><label onclick="prevCalendar()"><i
								class="fas fa-chevron-left"></i></label></th>
						<th align="center" id="tbCalendarYM" colspan="5">yyyy년 m월</th>
						<th><label onclick="nextCalendar()"><i
								class="fas fa-chevron-right"></i></label></th>
					</tr>
					<tr>
						<td align="center"><font color="#FD5E53">일</font></td>
						<td align="center">월</td>
						<td align="center">화</td>
						<td align="center">수</td>
						<td align="center">목</td>
						<td align="center">금</td>
						<td align="center"><font color="#3F72AF">토</font></td>
					</tr>
				</table>
				<script>
		    buildCalendar();
			</script>
			</div>
	</div>
</body>


</html>
