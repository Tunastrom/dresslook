<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deleteCheck(){
		var form = document.deleteform;
		if(!form.password.value){
			alert("test");
			form.password.focus();
			return;
		}
		form.submit();
	}
</script>
<% int idx=Integer.parseInt(request.getParameter("idx")); %>
</head>
<body>
	<table>
	<form name=deleteform method=post action="delete_ok.jsp?idx=<%=idx%>">
		<tr>
			<td>
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
					<tr	style="background: url('img/table_mid.gif') repeat-x; text-align: center;">
						<td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
						<td>삭제</td>
						<td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
					</tr>
					</form>
				</table>
				<table>
					<tr>
						<td>&nbsp;</td>
						<td align="center">비밀번호</td>
						<td><input name="password" type="password" size="50" maxlength="100"></td>
						<td>&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4"></td>
					</tr>
					<tr height="1" bgcolor="#82B5DF">
						<td colspan="4"></td>
					</tr>
					<tr align="center">
						<td>&nbsp;</td>
						<td colspan="2"><input type=button value="삭제" OnClick="javascript:deleteCheck();"> <input type=button value="취소" OnClick="javascript:history.back(-1)">
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>