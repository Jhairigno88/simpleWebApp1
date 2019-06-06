<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
 	import= "com.dede.app1st.model.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Utente creato!</h1>

<p>
			<% User u=(User)request.getAttribute("user" ); %>
			<!-- inserendo l'attributo (user) che ci viene dato dalla servlet
			dovremo andare a modificare i comandi request qui sotto eliminando
			la prima parte di comando : (String fName=request.getParameter("first_name")
			Lasciando poi solo il comando out a cui andremo a dare 
			i nuovi parametri request: out.print(u.getFirst_name())
			L'ultimo parametro Country lo lascieremo inalterato giusto per mostrare
			la differenza di stilizzazione.   -->
			
First name: <%  out.print(u.getFirst_name());  %>
<br>
Last name:  <% out.print(u.getLast_name()); %>
<br>
Country:    <%String country= request.getParameter("country"); out.print(country); %>
<br>
E_mail:		<% out.print(u.getE_mail()); %>
<p>
<!-- di seguito la formula abbreviata della formula di cui sopra! 
"< % = request.getParameter("first_name") % >"
-->
</body>
</html>