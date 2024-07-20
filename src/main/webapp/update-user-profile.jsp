<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>

<!-- Adding css file Link -->
<%@include file="component/css-file.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>
	<!-- If not login redirect the user to login page -->
	<a:if test="${empty userObj }">
		<a:redirect url="user-login.jsp"></a:redirect>
	</a:if>
	
	<!-- Header Added -->
	<%@include file="component/header.jsp"%>

	<!-- Js File Link -->
	<%@include file="component/js-file.jsp"%>

</body>
</html>