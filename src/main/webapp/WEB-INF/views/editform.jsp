<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
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

<h1>글 수정</h1>

<form:form modelAttribute="u" action="../editok" method="POST">
	<form:hidden path="seq"/>
<table id="edit">
	<tr><td>카테고리:</td><td><form:input path="category" /></td></tr>
	<tr><td>제목:</td><td><form:input path="title" /></td></tr>
	<tr><td>글쓴이:</td><td><form:input path="writer" /></td></tr>
	<tr><td>내용:</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>