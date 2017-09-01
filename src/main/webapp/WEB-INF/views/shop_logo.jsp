<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>shop logo page</title>
    
    <spring:message code="main_button" var="main"/>
    <spring:message code="logo_map" var="logo_map"/>
    <spring:message code="logo_about" var="logo_about"/>
    
</head>
<body>

<table border="0" width="100%">
    <tr align="center">
        <td width="20%"></td>
        <td width="60%"><img src="<c:url value="/resources/img/shop_logo.gif"/>"></td>
        <td width="20%" valign="top" align="right">

            <a href="?lang=en"><img alt="en" src="<c:url value="/resources/img/uk_flag.png"/>" width="32" height="32"></a>
            <a href="?lang=ru"><img alt="ru" src="<c:url value="/resources/img/ru_flag.png"/>" width="32" height="32"></a>

        </td>
    </tr>
</table>

<br>

<table border="0" bgcolor="f0f0f0" width="100%">
    <tr align="center" valign="top">
        <td width="33%" height="32">
        <c:choose>
        	<c:when test="${param.linked_page == 'index_page'}">
        		<input class="old" type="submit" value="${main}" style="width: 150Px">
        	</c:when>
        	<c:otherwise>
            	<form:form action="index" method="GET">
            	    <input class="new" type="submit" value="${main}" style="width: 150Px">
            	</form:form>
       		</c:otherwise>
        </c:choose>
        </td>
        <td width="33%"><p>${logo_map}</p></td>
        <td width="33%"><p>${logo_about}</p></td>
    </tr>
</table>

</body>
</html>