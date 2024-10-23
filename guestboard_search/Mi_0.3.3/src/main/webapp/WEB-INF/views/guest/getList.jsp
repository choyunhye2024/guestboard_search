<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.peisia.dto.GuestDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>방명록</h1>
<h2>글목록</h2>

총 글 수 ${count}, 총 페이지 수: ${totalPageCount}, 블럭 당 페이지 수 : ${pagesPerBlock}, 현재블럭: ${currentBlock }<br>
블럭 시작 페이지 : ${blockStartPage}, 블럭 끝 페이지 : ${blockEndPage}, 블럭 총 수: ${blockCount}<br>
이전 블럭 가능: ${hasBlockPrev}, 다음 블럭 가능: ${hasBlockNext}    
<hr>
<table>
<tr>
<td>번호</td>
<td>내용</td>
</tr>
<c:set var = "arr" value="${list}"/>
<c:forEach var="i" items="${arr}">
<tr><td>${i.bno}</td><td>${i.btext}</td></tr>
</c:forEach>
</table>

<c:if test = "${hasBlockPrev}">
<a href = "/spring/guest/getList?currentPage=${prevPage}">이전</a>
</c:if>

<c:forEach var = "i" begin ="${blockStartPage}" end="${blockEndPage}">
<a href = "/spring/guest/getList?currentPage=${i}">${i}</a>
</c:forEach>

<c:if test = "${hasBlockNext}">
<a href = "/spring/guest/getList?currentPage=${nextPage}">다음</a>
</c:if>
<hr>
<a href = "/spring/guest/write">새글 쓰기</a>
</body>
</html>