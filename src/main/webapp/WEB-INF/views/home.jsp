<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>

<jsp:include page="include/header.jsp" />

<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<jsp:include page="include/footer.jsp" />
</body>
</html>
