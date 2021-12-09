<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.time.LocalDateTime"%>
<%
	//현재시간 구해서 String으로 formating
	LocalDateTime nowTime = LocalDateTime.now();
	
	DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	DateTimeFormatter dateTimeFormatter2 = DateTimeFormatter.ofPattern("yyyy-MM");
	String now = nowTime.format(dateTimeFormatter);
	String beginMonth = nowTime.format(dateTimeFormatter2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>TCAT Dashboard</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script> 
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js"></script>
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
 

</head>

<body>
<jsp:include page="layout/header.jsp"/>
<%-- <%
    response.sendRedirect("title");    
%> --%>
	<a href="ScheduleDetailView?schedule_id=2">모달~</a>
	<a href="#" class="small-box-footer" data-toggle="modal" data-target="#myModal5">More info <i class="fas fa-arrow-circle-right"></i></a>
	
	
	<input type="date" class="form-control" value="<%=beginMonth %>-01" id="start_date" name="start_date" max="<%=now %>">
	<div class="input-group-addon">&nbsp;~&nbsp;</div>
	<input type="date" class="form-control" value="<%=now %>" id="end_date" name="end_date" max="<%=now %>">

</body>
</html>