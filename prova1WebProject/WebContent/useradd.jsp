<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Utente creato!</h1>

<p>
First name: <% String fName= request.getParameter("first_name"); out.print(fName);  %>
<br>
Last name:  <%String lName= request.getParameter("last_name"); out.print(lName); %>
<br>
Country:    <%String country= request.getParameter("country"); out.print(country); %>
<p>
<!-- di seguito la formula abbreviata della formula di cui sopra! 
"< % = request.getParameter("first_name") % >"
-->
</body>
</html>