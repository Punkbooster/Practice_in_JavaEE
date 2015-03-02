<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@page import="java.util.Enumeration"%>
<body>
	<table cellspacing="1" border="1">
		<%
			Enumeration<String> headers = request.getHeaderNames();
			int kh = 0;
			while (headers.hasMoreElements()) {
				out.println("<tr><td>");
				String hName = (String) headers.nextElement();
				out.println(kh++ + " " + hName + "</td>");
				Enumeration<String> hValues = request.getHeaders(hName);
				while (hValues.hasMoreElements()) {
					out.println("<td>" + hValues.nextElement() + "</td>");
				}
				out.println("</tr>");
			}
		%>
	</table>
</body>
</html>