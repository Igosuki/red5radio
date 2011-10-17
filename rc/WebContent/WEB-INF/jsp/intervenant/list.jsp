<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="/spring" %>
<html>
    <head>
        <title><spring:message code="intervenant.list.title" /></title>
        <link rel="stylesheet" href="<c:url value='/css/displaytag.css' />" />
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui-btnautocsort.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery-ui-btnautocsort.js" />" ></script>
    </head>
    <body>
        <div class="body">
            <h1><spring:message code="intervenant.list.title" /></h1>
            <c:if test="${errormess}">
            <div class="message">${errormess}</div>
            </c:if>
            <div class="list">
            	<c:url value="/rc/admin/intervenant/list" var="actionList"/>
            	<c:url value="/rc/admin/intervenant/show/" var="actionShow"/>
            	<c:url value="/rc/admin/intervenant/edit/" var="actionUrl"/>
            	<c:choose>
	            	<c:when test="${paging == true}" >
		                <display:table requestURIcontext="false" requestURI="${actionList}" id="interv" name="pagedList"  
		            				decorator="com.radioc.display.deco.IntervenantDecorator"  sort="page" partialList="true" 
		            				size="${pagedList.fullListSize}" list="pagedList" pagesize="${pagedList.objectsPerPage}">
		            		<display:column style="width: 10%;">
		            			<a class="edit" href="${actionUrl}${interv.id}">${default.button.edit.label}</a>
		            			<a class="show" href="${actionShow}${interv.id}">${default.button.edit.label}</a>
		            		</display:column>
		                	<display:column headerClass="sortable" sortable="true" property="name" titleKey="intervenant.name.label" />
		                	<display:column headerClass="sortable" sortable="true" property="email" titleKey="intervenant.email.label" />
		                	<display:column headerClass="sortable" property="emissions" titleKey="intervenant.emissions.label" />
		                	<display:column headerClass="sortable" property="emissionssup" titleKey="intervenant.emissionssup.label" />
		                </display:table>
		            </c:when>
		            <c:otherwise>
		            	<display:table id="interv" name="list"  decorator="com.radioc.display.deco.IntervenantDecorator" defaultsort="1" defaultorder="ascending" sort="page">
		            		<display:column style="width: 10%;"><a class="edit" href="${actionUrl}${interv.id}">${default.button.edit.label}</a></display:column>
		                	<display:column headerClass="sortable" property="name" titleKey="intervenant.name.label" />
		                </display:table>
		            </c:otherwise>
	            </c:choose>
            </div>
        </div>
        <script type="text/javascript">
        	$(function() {
        		$("a.edit").button({
        			icons: {
        				primary: "ui-icon-wrench"
        			},
        			text: false
        		});
        		$("a.show").button({
	    			icons: {
	    				primary: "ui-icon-search"
	    			},
	    			text: false
    			});
        	});
        	
        </script>
    </body>
</html>
