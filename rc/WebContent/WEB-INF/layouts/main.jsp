<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <title><decorator:title default="RC" /></title>
        <link rel="stylesheet" href="<c:url value='/css/main.css' />" />
        <link rel="stylesheet" href="<c:url value='/css/i18n.css' />" />
		<link rel="shortcut icon" href="<c:url value='/img/favicon-appli.ico' />" type="image/x-icon" />
        <link rel="stylesheet" href="<c:url value='/css/dropdown.css' />" />
		<script type="text/javascript" src="<c:url value='/js/jquery-1.6.2.js' />"></script>
        <script type="text/javascript"  src="<c:url value='/js/dropdown.js' />" ></script>
        <script type="text/javascript"  src="<c:url value='/js/jqueryuiutils.js' />" ></script>
        <decorator:head />
    </head>
    <body>
        <div id="grailsLogo">
        	<a href="<c:url value='/rc/main/index' />"><img style="width: 410px; height:82px;" src="<c:url value='/img/logo_rc.png' />" alt="Radio Courtoisie" border="0" /></a>
        </div>
        <div class="nav" >
        	<ul id="sddm">
        		<li><span class="menuButton"><a class="home" href="<c:url value='/rc/main/index' />"><spring:message code="menu.home.label" /></a></span></li>
        		<li><span class="menuButton"><a class="list" href="<c:url value='/rc/admin/explore' />">Explorateur</a></span></li>
        		<li>
        			<span class="menuButton"><a class="list" href="<c:url value='/rc/admin/emission/list' />"  onmouseover="mopen('mEm')" onMouseOut="mclosewithtime()">&Eacute;missions</a></span>
		            <div  id="mEm" onMouseOver="mcancelclosetime()" onMouseOut="mclosewithtime()">
		            	<a href="<c:url value='/rc/admin/emission/list' />"><spring:message code="default.list.label" arguments=" " /></a>
		            	<a href="<c:url value='/rc/admin/emission/create' />"><spring:message code="default.create.label" arguments=" " /></a>
		            </div>
        		</li>
        		<li>
	        		<span class="menuButton"><a class="list" href="<c:url value='/rc/admin/intervenant/list' />"  onmouseover="mopen('mInt')" onMouseOut="mclosewithtime()">Patrons d'&Eacute;mission</a></span>
		            <div  id="mInt" onMouseOver="mcancelclosetime()" onMouseOut="mclosewithtime()">
		            	<a href="<c:url value='/rc/admin/intervenant/list' />"><spring:message code="default.list.label" arguments=" " /></a>
		            	<a href="<c:url value='/rc/admin/intervenant/create' />"><spring:message code="default.create.label" arguments=" " /></a>
		            </div>
        		</li>
        		<li>
        			<span class="menuButton"><a class="list" href="<c:url value='/rc/admin/media/list' />" onMouseOver="mopen('mMi')" onMouseOut="mclosewithtime()">&Eacute;pisodes</a></span>
		            <div class="sddm" id="mMi" onMouseOver="mcancelclosetime()" onMouseOut="mclosewithtime()">
		            	<a href="<c:url value='/rc/admin/media/list' />"><spring:message code="default.list.label" arguments=" " /></a>
		            	<a href="<c:url value='/rc/admin/media/create' />"><spring:message code="default.create.label" arguments=" " /></a>
		            </div>
        		</li>
       			<sec:authorize access="hasRole('ROLE_SUPERVISOR')">
	        		<li>
	        			<span class="menuButton"><a class="list" href="<c:url value='/rc/admin/user/list' />" onMouseOver="mopen('mUsr')" onMouseOut="mclosewithtime()">Utilisateurs</a></span>
			            <div class="sddm" id="mUsr" onMouseOver="mcancelclosetime()" onMouseOut="mclosewithtime()">
			            	<a href="<c:url value='/rc/admin/user/list' />"><spring:message code="default.list.label" arguments=" " /></a>
			            	<a href="<c:url value='/rc/admin/user/create' />"><spring:message code="default.create.label" arguments=" " /></a>
			            </div>
	        		</li>
        		</sec:authorize>
        		<sec:authorize access="isAuthenticated()">
        			<li><span class="menuButton"><a class="list" href="<c:url value='/rc/user/profile' />">Profil Utilisateur</a></span></li>
        		</sec:authorize>
        		<li><span class="menuButton"><a class="list" href="<c:url value='/rc/admin/panel' />">Statistiques</a></span></li>
        		<li><span class="menuButton"><a class="list" href="#">Liens</a></span></li>
        		<li><span class="menuButton"><a class="list" href="<c:url value='/rc/main/contact' />">Contact</a></span></li>
        		<!-- <li><span class="flags"><a class="french" href="?lang=fr" >.</a><a class="english" href="?lang=en" >.</a></span></li> -->
        	</ul>
        	<div style="float:right;">
        		<sec:authorize access="isAuthenticated()">
        			<sec:authentication property='principal.username' var="usernamevar" />
        			<spring:message code="access.loggedin.message" arguments="${usernamevar}" />
        			<a href="<c:url value='/rc/logout' />"><spring:message code="access.logout.message" /></a>
        		</sec:authorize>
        		<sec:authorize access="!isAuthenticated()">
        			<a href="<c:url value='/rc/login' />"><spring:message code="access.login.message" /></a>
        		</sec:authorize>
        	</div>
        </div>
        <br /><br />
        <div style="float:left;">
        	<decorator:body />
        </div>
    </body>
</html>

