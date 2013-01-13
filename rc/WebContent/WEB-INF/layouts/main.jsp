<!DOCTYPE HTML>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <title><decorator:title default="RC" /></title>
        <link rel="stylesheet" href="<c:url value='/css/main.css' />" />
        <link rel="stylesheet" href="<c:url value='/css/i18n.css' />" />
		<link rel="shortcut icon" href="<c:url value='/img/favicon-appli.ico' />" type="image/x-icon" />
		<script type="text/javascript" src="<c:url value='/js/jquery-1.7.1.js' />"></script>
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui.css' />" />
        <%-- <script type="text/javascript" src="<c:url value="/js/jquery-ui.js" />" ></script> --%>
        <script type="text/javascript" src="<c:url value="/js/jquery-ui-1.8.17.js" />" ></script>
        <link href="<c:url value="/css/wijmo-open.css" />" rel="stylesheet" type="text/css" />
        <%-- <link href="<c:url value="/css/rocket/jquery-wijmo.css" />" rel="stylesheet" type="text/css" /> --%>
		<script type="text/javascript" src="<c:url value="/js/wijmoopenmin.js" />" ></script>
		<script type="text/javascript" >
			$(document).ready(function() {
	            $("#sddm").wijmenu();
			});
		</script>
        <%-- <script type="text/javascript"  src="<c:url value='/js/jqueryuiutils.js' />" ></script> --%>
        <decorator:head />
    </head>
    <body>
        <div id="grailsLogo">
        	<a href="<c:url value='/api/main/index' />"><img style="width: 410px; height:82px;" src="<c:url value='/img/logo_rc.png' />" alt="Your Radio Server" border="0" /></a>
        </div>
        <div >
        	<ul id="sddm">
        		<li><a  href="<c:url value='/api/main/index' />"><spring:message code="menu.home.label" /></a></li>
        		<li><a  href="<c:url value='/api/admin/explore' />"><spring:message code="menu.explorer.label" /></a></li>
        		<li><a  href="<c:url value='/api/admin/emission/list' />" ><spring:message code="menu.emissions.label" /></a>
        			<ul>
        				<li><h3><spring:message code="menu.visualize.label" /></h3></li>
        				<li><a href="<c:url value='/api/admin/emission/list' />"><spring:message code="default.list.label" arguments=" " /></a></li>
        				<li><h3><spring:message code="menu.admin.label" /></h3></li>
        				<li><a href="<c:url value='/api/admin/emission/create' />"><spring:message code="default.create.label" arguments=" " /></a></li>
        			</ul>
        		</li>
        		<li>
	        		<a  href="<c:url value='/api/admin/intervenant/list' />"   ><spring:message code="menu.intervenants.label" /></a>
		            <ul>
		            	<li><h3><spring:message code="menu.visualize.label" /></h3></li>
        				<li><a href="<c:url value='/api/admin/intervenant/list' />"><spring:message code="default.list.label" arguments=" " /></a></li>
        				<li><h3><spring:message code="menu.admin.label" /></h3></li>
        				<li><a href="<c:url value='/api/admin/intervenant/create' />"><spring:message code="default.create.label" arguments=" " /></a></li>
        			</ul>
        		</li>
        		<li>
        			<a  href="<c:url value='/api/admin/media/list' />" ><spring:message code="menu.episodes.label" /></a>
		            <ul>
		            	<li><h3><spring:message code="menu.visualize.label" /></h3></li>
        				<li><a href="<c:url value='/api/admin/media/list' />"><spring:message code="default.list.label" arguments=" " /></a></li>
        				<li><h3><spring:message code="menu.admin.label" /></h3></li>
        				<li><a href="<c:url value='/api/admin/media/create' />"><spring:message code="default.create.label" arguments=" " /></a></li>
        			</ul>
        		</li>
        		<li>
        			<a  href="<c:url value='/api/admin/playlist/list' />" ><spring:message code="menu.playlists.label" /></a>
		            <ul>
		            	<li><h3><spring:message code="menu.visualize.label" /></h3></li>
        				<li><a href="<c:url value='/api/admin/playlist/list' />"><spring:message code="default.list.label" arguments=" " /></a></li>
        				<li><h3><spring:message code="menu.admin.label" /></h3></li>
        				<li><a href="<c:url value='/api/admin/playlist/create' />"><spring:message code="default.create.label" arguments=" " /></a></li>
        			</ul>
        		</li>
       			<sec:authorize access="hasRole('ROLE_SUPERVISOR')">
	        		<li>
	        			<a  href="<c:url value='/api/admin/user/list' />"><spring:message code="menu.users.label" /></a>
			            <ul>
			            	<li><h3><spring:message code="menu.visualize.label" /></h3></li>
	        				<li><a href="<c:url value='/api/admin/user/list' />"><spring:message code="default.list.label" arguments=" " /></a></li>
	        				<li><h3><spring:message code="menu.admin.label" /></h3></li>
	        				<li><a href="<c:url value='/api/admin/user/create' />"><spring:message code="default.create.label" arguments=" " /></a></li>
        				</ul>
	        		</li>
	        		<li>
	        			<a  href="<c:url value='/api/admin/wordpress/panel' />"><spring:message code="menu.wordpress.label" /></a>
	        		</li>
        		</sec:authorize>
        		<sec:authorize access="isAuthenticated()">
        			<li><a  href="<c:url value='/api/user/profile' />"><spring:message code="menu.profile.label" /></a></li>
        		</sec:authorize>
        		<%-- <li><a  href="<c:url value='/api/admin/panel' />"><spring:message code="menu.statistics.label" /></a></li> --%>
        		<li><a  href="#">Liens</a></li>
        		<li><a  href="<c:url value='/api/main/contact' />"><spring:message code="menu.contact.label" /></a></li>
        		<!-- <li><span class="flags"><a class="french" href="?lang=fr" >.</a><a class="english" href="?lang=en" >.</a></span></li> -->
        		<li style="float:right; ">
       				<sec:authorize access="isAuthenticated()">
	       				<span style="float: right;">
		        			<sec:authentication property='principal.username' var="usernamevar" />
		        			<spring:message code="access.loggedin.message" arguments="${usernamevar}" />
		        			<a href="<c:url value='/api/logout' />"><spring:message code="access.logout.message" /></a>
		        		</span>
	        		</sec:authorize>
	        		<sec:authorize access="!isAuthenticated()">
		        		<span style="float: right;">
		        			<a href="<c:url value='/api/login' />"><spring:message code="access.login.message" /></a>
		        		</span>
	        		</sec:authorize>
       			</li>
        	</ul>
        </div>
        <br /><br />
        <div style="width: 100%;" >
        	<decorator:body />
        </div>
    </body>
</html>