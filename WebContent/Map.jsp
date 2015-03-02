<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*, java.io.*"%>
<%
	Map map = request.getParameterMap();
	Object[] keys = map.keySet().toArray();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Map size = <%=map.size()%>
	<table border="1">
		<tr>
			<td>Map element</td>
			<td>Par name</td>
			<td>Par value[s]</td>
		</tr>
		<%
			for (int k = 0; k < keys.length; k++) {
				String[] pars = request.getParameterValues((String) keys[k]);
				out.print("<tr><td>" + k + "</td><td>'" + keys[k]
						+ "'</td><td>");
				for (int j = 0; j < pars.length; j++) {
					if (j > 0)
						out.print(", ");
					out.print("'" + pars[j] + "'");
				}
				out.println("</td></tr>");
			}
		%>
	</table>
</body>
</html>
