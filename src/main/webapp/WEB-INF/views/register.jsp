<%@ taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
<%--
    Document   : register
    Created on : 22 Δεκ 2021, 7:40:51 μμ
    Author     : ANNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>gogDames</title>
    </head>
    <body>
	<springForm:form action="registeruser" method="post" modelAttribute="newuser">

		<h2>Registration Page</h2>
		<table>
			<tr>
				<td>Firstname</td>
				<td><springForm:input path="firstName"/></td>
				<td><springForm:errors path="firstName" cssClass="error"/></td>
			</tr>
			<tr>
				<td>Lastname</td>
				<td><springForm:input path="lastName"/></td>
				<td><springForm:errors path="lastName" cssClass="error"/></td>
			</tr>
			<tr>
				<td>Date of Birth</td>
				<td><springForm:input path="dateOfBirth"/></td>
				<td><springForm:errors path="dateOfBirth" type="date" cssClass="error"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><springForm:input path="email"/></td>
				<td><springForm:errors path="email" cssClass="error"/></td>
			</tr>
			<tr>
				<td>username</td>
				<td><springForm:input path="username"/></td>
				<td><springForm:errors path="username" cssClass="error"/></td>
			</tr>
			<tr>
				<td>password</td>
				<td><springForm:input path="password"/></td>
				<td><springForm:errors path="password" type="password" cssClass="error"/></td>
			</tr>

		</table>

		<input type="submit" value="submit" class="btn btn-success"/>
	</springForm:form>


    </body>
</html>
