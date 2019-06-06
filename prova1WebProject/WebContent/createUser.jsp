<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here </title>
</head>
<body>
<h1>Crea nuovo utente!</h1>

<form method="POST" action="CreateUser.do">
	<table style="bgcolor:green" width=75%>
	<tr>
		<td style="textalign:center">
			Nome: 
		</td>
		<td>
			<input type="text" size="30" maxlength="30" name="first_name"/>
		</td>
	</tr>
	<tr>
		<td style="textalign:center">
			Cognome:  
		</td>
		<td>
			<input type="text" size="30" maxlength="30" name="last_name"/>
		</td>
	</tr>
	<tr>
		<td style="textalign:center">
			Paese:    
		</td>
		<td>
			<input type="text" size="30" maxlength="30" name="country"/>
		</td>
	</tr>	
	<tr>
		<td style="textalign:center">
			E_mail: 
		</td>
		<td>
			<input type="text" size="30" maxlength="30" name="email"/>
		</td>
	</tr>	
	<tr>
		<td>
			<input type="submit" value="create">
		</td>
	</tr>
	</table>
</form>

<a href="mostraDB.do">Mostrami tutto il DB</a>

</body>
</html>