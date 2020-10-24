<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
     <%        response.setHeader("Cache-Control", "no-cache , no-store , must-revalidate");//http 1.1
			response.setHeader("Progma", "no-cache");//http1.0
			response.setHeader("Expires","0");//proxies
            if( session.getAttribute("username")== null){
    	
            	response.sendRedirect("login/login.jsp");
    		} 
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
	
<html>
<head>
<title>Error</title>
</head>
<body>
	<center>
		<h1>Error</h1>
		<h2><%=exception.getMessage() %><br/> </h2>
	</center>	
</body>
</html>