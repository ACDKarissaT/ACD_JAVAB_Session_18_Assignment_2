<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie Tickets</title>
</head>
<body>
	
<%
	String ageStr = request.getParameter("age");
	String name = request.getParameter("name");
	if (ageStr != null){
		try{
			int age = Integer.parseInt(ageStr);
			out.println("<p>Name: " + name +"</p>");
			out.println("<p>Age: " + age +"</p>");
			if (age < 0){
				out.println("<p style='color:red'> Age must be positive </p>");
			} else if (age > 65){
				out.println("<p>price = $7.00</p>");
			} else if (age < 10){
				out.println("<p>price = $5.00</p>");
			} else {
				out.println("<p>price = $9.50</p>");
			}
		} catch (NumberFormatException e){
			e.printStackTrace();
		} catch (Exception e){
			e.printStackTrace();
		}
	} else {
		out.println("<form action='index.jsp' mehtod='post'>" +
				"<label>Age </label>" +
				"<input type='text' name='age'> <br />" +
				"<label>Name </label>" +
				"<input type='text' name='name'> <br />" +
				"<input type='submit' value='submit'>" +
			"</form>");
	}
%>
</body>
</html>