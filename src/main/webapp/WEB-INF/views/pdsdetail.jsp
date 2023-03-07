<%@page import="mul.cam.a.dto.MemberDto"%>
<%@page import="mul.cam.a.dto.PdsDto"%>
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
	PdsDto pds = (PdsDto)request.getAttribute("pdsdto");
%>

<h1>자료 상세보기</h1>

<div align="center">

<table border="1">
<tr>
	<th>아이디</th>
	<td>
		<%=pds.getId() %>
		<input type="hidden" name="id" value="<%=pds.getId() %>">
	</td>
</tr>
<tr>
	<th>제목</th>
	<td><%=pds.getTitle() %></td>
</tr>
<tr>
	<th>다운로드</th>
	<td>
		<input type="button" value="다운로드" onclick="filedown(<%=pds.getSeq() %>, '<%=pds.getNewfilename() %>', '<%=pds.getFilename() %>')">
	</td>
</tr>
<tr>
	<th>조회수</th>
	<td><%=pds.getReadcount() %></td>
</tr>
<tr>
	<th>다운로드수</th>
	<td><%=pds.getDowncount() %></td>
</tr>
<tr>
	<th>파일명</th>
	<td><%=pds.getFilename() %></td>
</tr>
<tr>
	<th>등록일</th>
	<td><%=pds.getRegdate() %></td>
</tr>
<tr>
	<th>내용</th>
	<td>
		<textarea rows="10" cols="50" name="content"><%=pds.getContent() %></textarea>
	</td>
</tr>

</table>
<br>

<button type="button" class="btn btn-primary" onclick="location.href='pdslist.do'">자료 목록</button>

<%
MemberDto login = (MemberDto)session.getAttribute("login");
if(pds.getId().equals(login.getId())){
	// 1. session 영역에 속성값이 있는가? 즉, 로그인한 상태인가?
	// 2. 로그인(세션) 아이디와 DTO 객체에 저장된 아이디가 일치하는가? 즉, 작성자 본인인가?
	%>	
	<button type="button" class="btn btn-primary" onclick="updateBbs(<%=pds.getSeq() %>)">수정</button>
	<button type="button" class="btn btn-primary" onclick="deleteBbs(<%=pds.getSeq() %>)">삭제</button>
	<% 
}
%>

</div>

<form name="file_down" action="filedownLoad.do" method="post">
	<input type="hidden" name="newfilename">
	<input type="hidden" name="filename">
	<input type="hidden" name="seq">
</form>

<script type="text/javascript">
function filedown(seq, newfilename, filename) {
	document.file_down.newfilename.value = newfilename;
	document.file_down.filename.value = filename;
	document.file_down.seq.value = seq;
	document.file_down.submit();
}

function updatePds( seq ) {
	location.href = "pdsupdate.do?seq=" + seq;
}
function deletePds( seq ) {
	location.href = "pdsdelete.do?seq=" + seq;  
}
</script>

</body>
</html>