<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 여기 진짜 오나?
 
 글번호 : ${read.bno}
 <hr>
 <form action="/spring/guest/modify" method="post">
 <input type = "hidden" name = 'bno' value='${read.bno}'>
 <textarea name = 'btext'>${read.btext}</textarea>
 <input type = "submit" value="수정하기">
 </form>
</body>
</html>