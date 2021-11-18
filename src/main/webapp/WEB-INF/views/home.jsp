<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>TCAT Dashboard</title>


</head>
<body>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
 
 
<input type="radio" id="aaa" name="abcd" value="00" onchange="setDisplay()"> AAA
<input type="radio" id="bbb" name="abcd" value="10" onchange="setDisplay()"> BBB
 
 
<div id="divId">Test~~~~~~~~~~~~~~~~~~~</div>
 
<script>
function setDisplay(){
    if($('input:radio[id=aaa]').is(':checked')){
        $('#divId').hide();
    }else{
        $('#divId').show();
    }
}
 
 
</script>
</body>
</html>