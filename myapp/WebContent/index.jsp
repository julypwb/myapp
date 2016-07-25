<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Java EE APP</title> 
</head>
<body>
	<h1>欢迎访问套马的汉子的主页！！！</h1>
    <p><font size="36" color="red">哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈啊哈哈！！！！</font></p>
    <% 
    		out.println(path ); 
    		out.println(basePath); 
    %>
    <p>E-mail:<a href="mailto:julypwb@gmail.com">julypwb@hotmail.com</a></p>
</body>
</html>