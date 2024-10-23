<%@page import="com.peisia.dto.GuestDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

ArrayList<GuestDto> posts = (ArrayList<GuestDto>) request.getAttribute("posts");
for(int i=0; i<posts.size(); i++){
	
%>

<%=posts.get(i).getBno()%>
<%=posts.get(i).getBtext()%>
<br>
<%
}
%>
</body>
</html>