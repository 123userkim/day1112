<%@page import="com.sist.vo.SearchNameVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.SearchNameDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="searchname.jsp" method="post">
		�̸��� �Է��ϼ��� ==> <input type="text" name="ename">
		�μ���ġ�� �Է��ϼ��� ==> <input type="text" name="dloc">
		<input type="submit" value="�˻�">
	</form>
	
	<%
		request.setCharacterEncoding("euc-kr");
		if(request.getParameter("dloc") != null && request.getParameter("ename") != null){
			String ename = request.getParameter("ename");
			String dloc = request.getParameter("dloc");
			SearchNameDAO dao = new SearchNameDAO();
			ArrayList<String> list = dao.searchNameAndLoc(ename, dloc);
			
			%>
			<table border="1">
				<tr>	
					<td>����̸�</td>
					 
				</tr>
				<%
					for(String e : list){
						%>
							<tr>	
								<td><%= e %></td>
								 
							</tr>
						<% 
					}
				
				%>
			</table>
			 
		 
			<%
		}
	%>

</body>
</html>