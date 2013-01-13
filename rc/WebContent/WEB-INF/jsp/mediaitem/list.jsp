<%@page import="com.gepsensradio.utils.Utils"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title><spring:message code="mediaitem.list.title" /></title>
        <link rel="stylesheet" href="<c:url value='/css/displaytag.css' />" />
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui-btnautocsort.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery-ui-btnautocsort.js" />" ></script>
        <link rel="stylesheet" href="<c:url value='/css/search.css' />" />
    </head>
    <body>
        <div class="body" style="width: 95%;">
        	<div>
            	<h1><spring:message code="mediaitem.list.title" /></h1>
            	<br/>
            	<spring-form:form  cssClass="searchform" commandName="term" cssStyle="padding-left: 10px; " action="search" method="GET">
					<input name="term" style="input:hover { background: #b2d1ff;}" class="searchfield" type="text" value="Rechercher..." onfocus="if (this.value == 'Rechercher...') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Rechercher...';}">
					<input class="searchclass" type="submit" value="Chercher" />
				</spring-form:form>
			</div>
            <c:if test="${errormess}">
            <div class="message">${errormess}</div>
            </c:if>
            <div class="list">
            	<jsp:include page="../paging.jsp" />
            	<c:choose>
	            	<c:when test="${paging == true}" >
	            		<jsp:include page="table.jsp" />
		            </c:when>
		            <c:otherwise>
		            	<jsp:include page="table.jsp" />
		            </c:otherwise>
	            </c:choose>
            </div>
        </div>
         <script type="text/javascript">
        	$(document).ready(function() {
        		$(".searchclass").button({
        			icons: {
        				primary: "ui-icon-search"
        			},
        			text: true
        		});
        	});
        </script>
    </body>
</html>
