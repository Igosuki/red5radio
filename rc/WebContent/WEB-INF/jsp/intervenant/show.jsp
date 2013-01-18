<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<html>
    <head>
        <title><spring:message code="intervenant.show.title" /></title>
    </head>
    <body>
        <div class="body">
            <h1><spring:message code="default.show.label" arguments="une �mission" /></h1>
            <c:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </c:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><spring:message code="intervenant.id.label" /></td>
                            
                            <td valign="top" class="value">${intervenant.id}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><spring:message code="intervenant.name.label" /></td>
                            
                            <td valign="top" class="value">${intervenant.name}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
            	<c:url value="/api/admin/intervenant/index" var="actionUrl"/>
                <spring-form:form action="${actionUrl}" method="post" modelAttribute="intervenant">
                	<spring-form:hidden path="id"/>
                    <span class="button"><input type="submit" name="edit" class="edit" value='<spring:message code="default.button.edit.label" />' /></span>
                    <span class="button"><input type="submit" name="delete" class="delete" value='<spring:message code="default.button.delete.label" />'  /></span>
                </spring-form:form>
            </div>
        </div>
    </body>
</html>
