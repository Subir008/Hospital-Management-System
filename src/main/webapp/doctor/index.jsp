<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Admin Panel</title>

<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>
<%@include file="component/navbar.jsp"%>

	<!-- Checking admin session is start or not if not start then redirect user to admin login page -->
	<a:if test="${empty doctorObj}">
		<a:redirect url="../doctor-login.jsp"></a:redirect>
	</a:if>
	
	<div class="container p-3">
		<h3 class="text-center mt-5 mb-3 ">Doctor Dashboard</h3>
	</div>
	
<%@include file="component/js-file.jsp"%>
</body>
</html>