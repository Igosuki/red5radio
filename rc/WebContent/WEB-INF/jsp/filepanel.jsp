<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/ckfinder" prefix="ckfinder" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<title>Red5 Admin</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<meta name="robots" content="noindex, nofollow" />
		<link href="/css/ckfinder.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/ckfinder/ckfinder.js"></script>
	</head>
	<body>
		<div><br /><br /><br /><br /></div>
	 	<div class="body" style="position:absolute;">
	 		<div style="float:left;">
	 		<c:url value="/ckfinder/" var="ckPath" />
            <ckfinder:ckfinder basePath="${ckPath}" width="1000" height="1000" />
            </div>
     	</div>
	</body>
</html>
