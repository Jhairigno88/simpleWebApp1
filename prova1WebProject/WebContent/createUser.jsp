<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Crea nuovo utente!</h1>

<form method="POST" action="CreateUser.do">
	First name: <input type="text" size="40" name="first_name"/>
	<br>
	Last name :  <input type="text" size="40" maxlength="40" name="last_name"/>
	<br>
	Country   :    <input type="text" size="40" maxlength="40" name="country"/>
	<br>
	E_mail    : <input type="text" size="40" maxlength="40" name="email"/>
	<input type="submit" value="create">
</form>

<a href="mostraDB.do">Mostrami tutto il DB</a>

</body>
</html>