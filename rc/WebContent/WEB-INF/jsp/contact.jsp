<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="/spring" %>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title><spring:message code="application.title" /></title>
<script type="text/javascript" src="<c:url value='/js/flowplayer-3.2.6.min.js' />" ></script>
</head>

<body>
<div style="margin-left:10px;">
<h1>Contact</h1>

<table style="width:760px;">
	<thead>
		<tr>
			<th>Nom</th>
			<th>Email</th>
			<th>Skype</th>
			<th>T&eacute;l&eacute;phone</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Allen Le Yaouanc</td>
			<td>allen@graph-id.net</td>
			<td>allenleyaouanc</td>
			<td>06 12 19 30 21</td>
		</tr>
		<tr>
			<td>Guillaume Balaine</td>
			<td>guillaume@graph-id.net</td>
			<td>igosuki</td>
			<td>06 08 85 85 85</td>
		</tr>
	</tbody>
</table>
</div>
</body>
</html>