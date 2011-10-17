
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="/spring" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="application.title" /></title>
<script type="text/javascript" src="<c:url value='/js/swfobject.js' />"></script>
<script type="text/javascript" >
swfobject.embedSWF("<c:url value='/flash/adminPanel.swf' />", "adminPanelContainer", "100%", "100%", "9.0.0");
</script>
</head>
<body>
<br /><br /><br />
<div id="adminPanelContainer" style="display:block;width:750px;height:30px;">
	<p>You need the Adobe Flash Player for the Red5 Admin, download it by clicking the image below.</p>
	<p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /></a></p>
</div>
</body>
</html>
