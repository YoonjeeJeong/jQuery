<%@page import="java.util.ArrayList"%>
<%@page import="controller.ZipcodeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
ZipcodeDAO dao = new ZipcodeDAO();
//DAO에서 sido를 select한 결과를 컬렉션으로 반환
ArrayList<String> sidoList = dao.getSido();
//반환된 결과를 page영역에 저장. JSTL을 사용하기 위함
pageContext.setAttribute("sidoList", sidoList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="../common/bootstrap4.4.1/css/bootstrap.css" />
<script src="../common/jquery/jquery-3.5.1.js"></script>

<script type="text/javascript">
$(function(){
	$('#sido').change(function(){
		$.ajax({
			url: "./common/08GugunOption.jsp",//경로
			type: "get",//방식
			contentType: "text/html;charset:utf-8;",
			data: {//파라미터
				sido : $('#sido option:selected').val()
			},
			dataType: "json",
			success: function(d){
				var optionStr = "";
				optionStr += "<option value=''>";
				optionStr += "-구군을 선택하라우-";
				optionStr += "</option>";
				
				/*
				콜백받은 JSON배열을 갯수만큼 반복하기 위해 $.each()메소드를 사용한다.
				이때 배열에 저장된 순서대로 매개변수 data로 출력된다
				*/
				$.each(d, function(index, data){
					optionStr +='<option value="' + data + '">';
					optionStr += data;
					optionStr += '</option>';
				});
				//파싱한 내용을 구/군 select 태그에 삽입한다
				$('#gugun').html(optionStr);
			},
			error:function(e){
				alert("오류발생ㅠㅠ" + e.status + ":" + e.statusText);
			}
		});
	});
});
</script>
</head>
<body>
<div class="container">
	<div class="row">
		<h2>우편번호DB를 이용한 시도/구군 동적셀렉트 구현</h2>
	</div>
	<form id="zipFrm">
	<div class="row">		
		<div class="col-4">
			시/도:
			<select id="sido" class="form-control">
				<option value="">-시/도선택하삼-</option>
				<c:forEach items="${sidoList }" var="sidoStr">
					<option value="${sidoStr }">${sidoStr }</option>
				</c:forEach>
			</select>
		</div>
		<div class="col-8">
			구/군:
			<select id="gugun" class="form-control">
				<option value="">-구/군선택하삼-</option>
			</select>
		</div>		
	</div>
	</form>
</div>

</body>
</html>