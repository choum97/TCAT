<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>TCAT Dashboard</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script> 
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js"></script> 
<script src="http://nunbi.co.kr/plugin/rolling/jq.rolling.js"></script> 

<style type="text/css">
.none{display:none}
#ticker{float:left;width:100px;}
.navi{float:right;}
.block {border:2px solid #d81f25; padding:0 5px; height:20px; overflow:hidden; background:#fff; width:350px; font-family:Gulim; font-size:12px;float:left;}
.block ul,
.block li {margin:0; padding:0; list-style:none;}
.block li a {display:block; height:20px; line-height:20px; color:#555; text-decoration:none;}
</style>
</head>

<body>
<script src='<c:url value="/resources/js/rolling.js"/>'></script> 
<div class="block">
    <ul id="ticker">
        <li><a href="#"><span>1</span> 김연아</a></li>
        <li><a href="#"><span>2</span> 손연재</a></li>
        <li><a href="#"><span>3</span> 유아니</a></li>
        <li><a href="#"><span>4</span> 차승원</a></li>
        <li><a href="#"><span>5</span> 전지현</a></li>
        <li><a href="#"><span>6</span> 유이</a></li>
        <li><a href="#"><span>7</span> 손연재</a></li>
        <li><a href="#"><span>8</span> 손연재</a></li>
        <li><a href="#"><span>9</span> 손연재</a></li>
    </ul>
  <div class="navi">
    <button class="prev">이전</button>
    <button class="next">다음</button>
    <button class="pause none">정지</button>
    <button id="pause" class="">Pause</button>
  </div>
</div>

</body>
</html>