<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--author 손호영   -->
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="layout/header.jsp" />
<body>

	<!-- 사이드 바 -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<jsp:include page="layout/sidebar.jsp"/>
		</aside>
 
<table border="1" width="300" height="300" align= "center">
<center>
<span style="color: green; font-weight: bold;">입력한 이메일로 받은 인증번호를 입력하세요. (인증번호가 맞아야 비밀번호를 변경하실 수 있습니다.)</span> <br> <br>    
        <br> <br>
        
        
        <div style="text-align:center;">
            <tr>        
                <td>
                <center>
                    <form action="pass_injeung.do${dice},${e_mail}" method="post">
                    
                    <center>
                        <br>
                        <div>
                            인증번호 입력 : <input type="number" name="pass_injeung"
                                placeholder="  인증번호를 입력하세요. ">
                        </div>                                        
 
                        <br> <br>
                        <button type="submit" name="submit">인증번호 전송</button>
 
                        </div>
                    </td>
                </tr>
                    </center>
            </table>
        </form>
</center>
 

</body>
 <jsp:include page="layout/footer.jsp"/>
</html>
