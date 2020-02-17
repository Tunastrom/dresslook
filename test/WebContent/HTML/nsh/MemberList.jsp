<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script> 

//function delfunc(x) {
//	 console.log(x);
//  

//  var r = confirm("선택한 회원정보를 삭제하시겠어요?");
//  if (r==true){
//	  frm.deleteId.value=x;
//	  frm.onsubmit="true";
 // }	
//}
 
 
  
/*  function delfunc(){
	var str = document.getElementsByTagName("td")[0].childNodes[0].nodeValue;
	alert(str);
  }
*/
/*
$(function(){
	$('#td').on('click',function(){
		$.ajax({
			url:'memberlist.do',
			type:'get',
			success: function(t){
				$("<h1></h1>").text($(t).text()).appendTo('body');
			},
			error:function(){
				alert('연결실패');
			}
		});
	});
})*/

	var trs =null;
	$(document).ready(function(){
		trs = document.querySelectorAll("tr");
		for(i=1;i<trs.length;i++){
		trs[i].addEventListener("click",function(){
			var r = confirm("선택한 회원정보를 삭제하시겠어요?");
			if (r==true){
				console.log(this.children[0].innerText);	
				var delId = this.children[0].innerText;
				  frm.deleteId.value=delId;
				  frm.submit();
			  }	 
		});
		}
	});
	
</script>  	
 
</head>
<body>

	<div align="center" id="dv">
	<br />
		<h1>회원 관리</h1>
		<form name="frm" id="frm" action="memberdelete.do" method="post">
		<input type="hidden" name="deleteId" value="">
		<table class="table table-hover" id="ttd">
			<tr>
				<th scope="col">ID</th>
			    <th scope="col">이 름</th>
				<th scope="col">패스워드</th>
				<th scope="col">생일</th>
				<th scope="col">주 소1</th>
				<th scope="col">주 소2</th>
				<th scope="col">우편번호</th>
				<th scope="col">연 락 처</th>
				<th scope="col">등 급</th>
				<th scope="col">상 태</th>
				<th scope="col">적립금</th>
				<th scope="col">성 별</th>
				<th scope="col">최근 접속일</th>
			</tr>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.m_id }</td><!-- <button id="id01">회원 삭제</button></td>-->
				<td>${dto.m_name }</td>
				<td>${dto.m_pwd }</td>
				<td>${dto.m_birth }</td>
				<td>${dto.m_addr1 }</td>
				<td>${dto.m_addr2 }</td>
				<td>${dto.m_zip }</td>
				<td>${dto.m_phone }</td>
				<td>${dto.m_grade }</td>
				<td>${dto.m_status }</td>
				<td>${dto.m_point }</td>
				<td>${dto.m_sex }</td>
				<td>${dto.recent_connection }</td>		
			</tr>
			</c:forEach>
		</table>
		</form>
	</div>
</body>
</html>