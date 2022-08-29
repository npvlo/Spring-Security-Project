<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>Home Page</title>
</head>

<body>
	<h2>Company Home Page</h2>
	<hr>
	
	<p> Welcome! </p>
	<hr>
	
		<p> User: <security:authentication property="principal.username"/> 
		<br>
			Role(s):  <security:authentication property="principal.authorities"/>
		</p>
		
		<hr>
		
		<security:authorize access="hasRole('MANAGER')">
			<p>
				<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting (MANAGERS ONLY)</a>
			</p>
		</security:authorize>
		
		<hr>
		
		<security:authorize access="hasRole('ADMIN')">
			<p>
				<a href="${pageContext.request.contextPath}/systems">Admin Dashboard (ADMIN ONLY)</a>
			</p>
		</security:authorize>
	<hr>
	
	<!-- logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		<input type="submit" value="Logout"/>
	</form:form>
	

</body>

</html>