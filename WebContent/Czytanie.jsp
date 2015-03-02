<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.util.*, java.io.*"%>
<%
	int len = request.getContentLength();
	byte[] buf = null;
	int n = 0;
	if (len > 0) {
		buf = new byte[len];
		n = request.getInputStream().read(buf);
	}
%>
 <body>
<form action="" method="post" enctype="multipart/form-data">
		<input type="hidden" name="user" value="Piotr" /> 
		<input type="file" name="fil" /> 
		<input type="submit" />
		<input type="hidden" name="lang" value="Java" /> 
	</form>
	<table border="1">
		<tr>
			<td>getContentType()</td>
			<td><%=request.getContentType()%></td>
		</tr>
		<tr>
<td>getContentLength()</td>
			<td><%=len%></td>
		</tr>
		<%
			out.print("<tr><td>getInputStream(): " + n + "</td><td><pre>");
			for (int k = 0; k < n; k++)
				out.print((char) buf[k]);
			out.println("</pre></td></tr>");
		%>
	</table>

</html>