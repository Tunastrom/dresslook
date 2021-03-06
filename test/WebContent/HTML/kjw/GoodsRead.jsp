<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
<!-- function transData(n) {
	frm.id.value = n;
	frm.submit();

	$("#back_Btn").click(function() {
		location.href = "goodsDeleteOne.do" + $
		{
			dto[0].g_num
		}
		;
	});
	-->
</script>
</head>
<body>
	<h2>상품정보수정</h2>
	<br />
	<br />
	<!--memberupdate.do-->
	<form id="frm" name="frm" action="goodsEdit.do" method="post">
		<input type="hidden" name="id">
		<table class="table table-hover">
			<tr>
				<td>상품 번호</td>
				<td><input type="hidden" id="num" name="num"
					value="${dto[0].g_num }">${dto[0].g_num }</td>
			</tr>
			<tr>
				<td>상 품 명 :</td>
				<td><input type="text" id="name" name="name"
					value="${dto[0].g_name }"></td>
			</tr>
			<tr>
				<td>판 매 가 :</td>
				<td><input type="text" id="grice" name="grice"
					value="${dto[0].g_price }"></td>
			</tr>
			<tr>
				<td>공 급 가 :</td>
				<td><input type="text" id="srice" name="srice"
					value="${dto[0].s_price }"></td>
			</tr>
			<tr>
				<td>사 이 즈 :</td>
				<td><select id="size" name="size">
						<option value="110">XS</option>
						<option value="111">S</option>
						<option value="112">M</option>
						<option value="113">L</option>
						<option value="114">XL</option>
						<option value="115">XXL</option>
				</select> ${dto[0].g_size }</td>
			</tr>
			<tr>
				<td>색 상 :</td>
				<td><input type="text" id="color" name="color"
					value="${dto[0].color }"></td>
			</tr>
			<tr>
				<td>재고유무 :</td>
				<td><select id="inven" name="inven">
						<option value="140">Y</option>
						<option value="141">N</option>
				</select> ${dto[0].g_inven }</td>
			</tr>
			<tr>
				<td>제 조 사 :</td>
				<td><input type="text" id="maker" name="maker"
					value="${dto[0].maker }"></td>
			</tr>
			<tr>
				<td>상품이미지 :</td>
				<td><img alt=""
					src="${pageContext.request.contextPath}/upload/goodsImg/${dto[0].g_fileName}"
					width="100" height="100"></td>
			</tr>
			<tr>
				<td>상품정보 :</td>
				<td><textarea id="info" name="info">${dto[0].g_info }</textarea></td>
			</tr>
			<tr>
				<td>상품분류코드 :</td>
				<td><select id="gcode" name="gcode">
						<option value="150">남자상의</option>
						<option value="151">남자하의</option>
						<option value="152">남자신발</option>
						<option value="153">남자양말</option>
						<option value="154">남자모자</option>
						<option value="155">남자언더웨어상의</option>
						<option value="156">남자언더웨어하의</option>
						<option value="157">남자가방</option>
						<option value="158">남자악세사리</option>
						<option value="159">남자수영복</option>
						<option value="160">남자외투(단)</option>
						<option value="161">남자외투(장)</option>
						<option value="162">남자기타</option>
						<option value="163">여자상의</option>
						<option value="164">여자하의</option>
						<option value="165">여자한벌옷</option>
						<option value="166">여자양말</option>
						<option value="167">여자신발</option>
						<option value="168">여자모자</option>
						<option value="169">여자언더웨어상의</option>
						<option value="170">여자언더웨어하의</option>
						<option value="171">여자가방</option>
						<option value="172">여자악세사리</option>
						<option value="173">여자수영복</option>
						<option value="174">여자외투(단)</option>
						<option value="175">여자외투(장)</option>
						<option value="176">여자기타</option>
						<option value="177">안경</option>
						<option value="178">선글라스</option>
				</select> ${dto[0].g_code }</td>
			</tr>
			<tr>
				<td>성별분류코드 :</td>
				<td><select id="scode" name="scode">
						<option value="050">남자</option>
						<option value="051">여자</option>
				</select> ${dto[0].g_sex }</td>
			</tr>
			<tr>
				<td>진열우선순위 :</td>
				<td><input type="text" id="prior" name="prior"
					value="${dto[0].g_prior}"></td>
			</tr>
			<tr>
				<td>상품상태 :</td>
				<td><select id="status" name="status">
						<option value="190">판매가능</option>
						<option value="191">판매불가</option>
						<option value="192">입고대기</option>
				</select> ${dto[0].g_status}</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="수정">
					<input type="submit" value="삭제" formaction="goodsDeleteOne.do">
					<input type="reset" value="초기화"></td>
			</tr>
		</table>
	</form>
	<br />
	<div align="center">
		<button type="button" onclick="location.href='goodsList.do'">목록가기</button>
	</div>
</body>
</html>