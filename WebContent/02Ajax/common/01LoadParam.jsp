<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String params = request.getParameter("params");
if(params.equals("good")){
%>
	<h3 style="color:blue;">Good~오늘은 좋은 날 *^^*</h3>
<%
}
else if(params.equals("bad")){
%>
	<h3 style="color:black;">Bad! 운수 나쁜날 ㅜㅜ</h3>
<%
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="../common/jquery/jquery-3.5.1.js"></script>
<script>
$(function(){

});
</script>
</head>
<body>

</body>
</html>