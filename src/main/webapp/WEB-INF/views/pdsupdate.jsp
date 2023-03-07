<%@page import="mul.cam.a.dto.PdsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	PdsDto pds = (PdsDto)request.getAttribute("pds");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div align="center">
<form action="pdsupdateAf.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="seq" value="<%=pds.getSeq() %>">

<table border="1">
<col width="200"><col width="500">

<tr>
	<th>아이디</th>
	<td><%=pds.getId() %></td>
</tr>
<tr>
	<th>제목</th>
	<td>
		<input type="text" name="title" size="50" value="<%=pds.getTitle() %>">
	</td>
</tr>
<tr>
	<th>파일명</th>
	<td><%=pds.getFilename() %>
		<input type="hidden" name="filename" value="<%=pds.getFilename() %>">
	</td>
</tr>
<tr>
	<th>수정할 파일</th>
	<td>
		<input type="file" name="fileload">
	</td>
</tr>
<tr>
	<th>내용</th>
	<td>
		<textarea rows="10" cols="50" name="content"><%=pds.getContent() %></textarea>
	</td>
</tr>
<tr>
	<td colspan="2">
		<input type="submit" value="수정하기">	
	</td>
</tr>
</table>
</form>
</div>

</body>
</html>