<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form method="get" action="./InsertGoodsOk.do"
			enctype="multipart/form-data">
			<table>
				<tr>
					<td>상품번호</td>
					<td><input type="text" id="num" name="num" value="002"></td>
				</tr>
				<tr>
					<td>상품명</td>
					<td><input type="text" id="name" name="name" value="pants"></td>
				</tr>
				<tr>
					<td>판매가</td>
					<td><input type="text" id="grice" name="gprice" value="16000"></td>
				</tr>
				<tr>
					<td>공급가</td>
					<td><input type="text" id="srice" name="sprice" value="13000"></td>
				</tr>
				<tr>
					<td>사이즈</td>
					<td><select id="size" name="size">
							<option value="110">XS</option>
							<option value="111">S</option>
							<option value="112">M</option>
							<option value="113">L</option>
							<option value="114">XL</option>
							<option value="115">XXL</option>
					</select></td>
				</tr>
				<tr>
					<td>색상</td>
					<td><input type="text" id="color" name="color" value="blue"></td>
				</tr>
				<tr>
					<td>재고유무</td>
					<td><select id="size" name="size">
							<option value="140">Y</option>
							<option value="141">N</option>
					</select></td>
				</tr>
				<tr>
					<td>판매자ID</td>
					<td><input type="text" id="id" name="id" value="sel1"></td>
				</tr>
				<tr>
					<td>제조사</td>
					<td><input type="text" id="maker" name="maker" value="nice"></td>
				</tr>
				<tr>
					<td>상품이미지</td>
					<td><input type="file" name="image" id="image"></td>
				</tr>
				<tr>
					<td>상품정보</td>
					<td><textarea id="info" name="info"></textarea></td>
				</tr>
				<tr>
					<td>상품분류코드</td>
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
					</select></td>
				</tr>
				<tr>
					<td>성별분류코드</td>
					<td><select id="scode" name="scode">
							<option value="050">남자</option>
							<option value="051">여자</option>
					</select></td>
				</tr>
				<tr>
					<td>진열우선순위</td>
					
					<td><input type="text" id="prior" name="prior" value="1"></td>
				</tr>
				<tr>
					<td>상품상태</td>
					<td><select id="status" name="status">
							<option value="190">판매가능</option>
							<option value="191">판매불가</option>
							<option value="192">입고대기</option>
					</select></td>
				</tr>
				<tr>
					<td rowspan="1">1<input type="submit" value="등록"></td>
				</tr>

			</table>
		</form>
	</div>

</body>
</html>