<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

	
<sec:authorize access="isAuthenticated()">
 

	<script>
	
 	alert("Hello");
	var csrfTokenName = $("meta[name='_csrf_header']").attr("content");
	var csrfTokenValue = $("meta[name='_csrf']").attr("content");	
	
	console.log("CSRF name", csrfTokenName);
	console.log("CSRF value", csrfTokenValue);
	
	</script>

</sec:authorize>