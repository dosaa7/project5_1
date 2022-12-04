<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새글 추가</title>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
</head>

<body>

<h1>새글 추가</h1>
<form action="addok" method="post">
<table id="edit">
    <tr><td>카테고리:</td><td><input type="text" name="category"/></td></tr>
    <tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
    <tr><td>글쓴이:</td><td><input type="text" name="writer"></td></tr>
    <tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
</table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>