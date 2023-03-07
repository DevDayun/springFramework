<%@page import="mul.cam.a.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	MemberDto login = (MemberDto)session.getAttribute("login");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 페이지 입니다</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

</head>
<body>

	<h1>글쓰기</h1>

	<div align="center">

		<form action="bbswriteAf.do" id="frm" method="post">

			<table border="1">
				<col width="200"><col width="500">

				<tr>
					<th>아이디</th>
					<td>
						<%-- <input type="text" name="id" size="50px" value="<%=login.getId() %>" readonly="readonly"> --%>

						<%=login.getId() %> <input type="hidden" name="id" value="<%=login.getId() %>">
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" id="title" name="title" size="50px"
						class="form-control form-control-lg" placeholder="제목을 작성해주세요"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="10" id="content" name="content" 
							class="form-control" placeholder="내용을 작성해주세요"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<!-- <input type="submit" value="글쓰기"> -->
						<button type="button">글쓰기</button>
					</td>
				</tr>

			</table>
		</form>
	</div>

	<script type="text/javascript">
$(document).ready(function() { /* 폼에 필수 항목인 ‘제목’과 ‘내용’이 입력되어 있는지 확인합니다. */
	
	$("button").click(function() {
		
		if($("#title").val().trim() == "" ){
			alert("제목을 작성해 주십시오");
			return;
		}else if($("#content").val().trim() == "" ){
			alert("내용을 작성해 주십시오");
			return;
		}else{
			$("#frm").submit();
		}		
	});	
});
</script>


</body>
</html>

