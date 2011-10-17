<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <title><spring:message code="user.list.title" /></title>
        <link rel="stylesheet" href="<c:url value='/css/displaytag.css' />" />
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui-btnautocsort.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery-ui-btnautocsort.js" />" ></script>
    </head>
    <body>
        <div class="body">
            <h1><spring:message code="user.list.title" /></h1>
            <c:if test="${errormess}">
            <div class="message">${errormess}</div>
            </c:if>
            <div class="list">
            	<c:url value="/rc/admin/user/edit/" var="actionUrl"/>
            	<c:choose>
	            	<c:when test="${paging == true}" >
		                <display:table   decorator="com.radioc.display.deco.UserDecorator" sort="external" partialList="true" 
		                				name="page" size="${page.fullListSize}" pagesize="${page.objectsPerPage}">
		                </display:table>
		            </c:when>
		            <c:otherwise>
		            	<display:table id="user" name="list"  decorator="com.radioc.display.deco.UserDecorator" defaultsort="1" defaultorder="ascending" sort="page">
		            		<display:column style="width: 10%;"><a class="edit" href="${actionUrl}${user.id}">${default.button.edit.label}</a></display:column>
		                	<display:column headerClass="sortable" property="userName" titleKey="user.name.label" />
		                	<display:column headerClass="sortable" property="firstname" titleKey="user.firstname.label" />
		                	<display:column headerClass="sortable" property="lastname" titleKey="user.lastname.label" />
		                	<display:column headerClass="sortable" property="email" titleKey="user.email.label" />
		                	<display:column headerClass="sortable" property="enabled" titleKey="user.enabled.label" />
		                	<display:column headerClass="sortable" property="roles" titleKey="user.roles.label" />
		                </display:table>
		            </c:otherwise>
	            </c:choose>
            </div>
        </div>
        <%-- <div style="float:left;">
			<table>
				<tr><th>Tag</th><th>Value</th></tr>
				<tr>
				<td>&lt;sec:authentication property='name' /&gt;</td><td><sec:authentication property="name"/></td>
				</tr>
				<tr>
				<td>&lt;sec:authentication property='principal.username' /&gt;</td><td><sec:authentication property="principal.username"/></td>
				</tr>
				<tr>
				<td>&lt;sec:authentication property='principal.enabled' /&gt;</td><td><sec:authentication property="principal.enabled"/></td>
				</tr>
				<tr>
				<td>&lt;sec:authentication property='principal.accountNonLocked' /&gt;</td><td><sec:authentication property="principal.accountNonLocked"/></td>
				</tr>
				</table>
		</div> --%>
        <script type="text/javascript">
        	$(function() {
        		$("a.edit").button({
        			icons: {
        				primary: "ui-icon-wrench"
        			},
        			text: false
        		});
        	});
        </script>
    </body>
</html>
