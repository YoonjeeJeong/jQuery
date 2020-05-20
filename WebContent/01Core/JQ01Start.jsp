<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQ01Start</title>
<!-- common은 웹컨텐츠 하위라서 점이 두개임 -->
<script src="../common/jquery/jquery-3.5.1.js"></script>
<script>
//하단은 window.onload = function(){}과 같은 이치므로 
//제이쿼리 부분이 html다음에 실행이 된다
	$(document).ready(function(){
		alert("jQuery시작하기 1");
	});
	
	$().ready(function() {
		alert("jQuery시작하기 2");
	});
	
	jQuery(function(){
		alert("jQuery시작하기 3");
	});
	
	$(function(){
		alert("jQuery시작하기 4");
	});
</script>
</head>
<body>
	<h2>jQuery사용하기</h2>
	<script>
		alert("HTML문서의 끝");
	</script>
</body>
</html>