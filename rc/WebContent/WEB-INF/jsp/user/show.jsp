<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <title><spring:message code="user.show.title" /></title>
    </head>
    <body>
        <div class="body">
            <h1><spring:message code="default.show.label" arguments="un utilisateur" /></h1>
            <c:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </c:if>
            <div class="dialog">
                <table>
                    <tbody>
                    	<tr class="prop">
                     		<td valign="top" class="name">
                            	<label for="code"><spring:message code="user.name.label" /></label>
                            </td>
                            <td valign="top" class="value">
                            	${user.userName}
                            </td>
	                    </tr>
	                    <tr class="prop">
	                        <td valign="top" class="name">
	                            <label for="code"><spring:message code="user.firstname.label" /></label>
	                        </td>
	                        <td valign="top" class="value">
	                        	${user.firstname}
	                        </td>
	                    </tr>
	                    <tr class="prop">
	                        <td valign="top" class="name">
	                            <label for="code"><spring:message code="user.lastname.label" /></label>
	                        </td>
	                        <td valign="top" class="value">
	                        	${user.lastname}
	                        </td>
	                    </tr>
	                    <tr class="prop">
	                        <td valign="top" class="name">
	                            <label for="code"><spring:message code="user.email.label" /></label>
	                        </td>
	                        <td valign="top" class="value">
	                        	${user.email}
	                        </td>
	                    </tr>
	                    <tr class="prop">
	                        <td valign="top" class="name">
	                            <label for="code"><spring:message code="user.enabled.label" /></label>
	                        </td>
	                        <td valign="top" class="value">
	                        	<input type="checkbox"  <c:if test="${user.enabled}" >checked</c:if> />
	                        </td>
	                    </tr>
	                    <sec:authorize access="hasRole('ROLE_SUPERVISOR')">
	                		 <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="user.roles.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<c:forEach items="${user.roles}" var="role">
                                		<spring:message code='${role.value}' />
                                	</c:forEach>
                                </td>
                             </tr>
	                	</sec:authorize>
                    </tbody>
                </table>
            </div>
            <div class="buttons">
            	<sec:authorize access="hasRole('ROLE_SUPERVISOR')">
            		<c:url value="/api/admin/user/index" var="actionUrl"/>
	                <spring-form:form action="${actionUrl}" method="post" modelAttribute="user">
	                	<spring-form:hidden path="id"/>
	                    <span class="button"><input type="submit" name="edit" class="edit" value='<spring:message code="default.button.edit.label" />' /></span>
	                    <span class="button"><input type="submit" name="delete" class="delete" value='<spring:message code="default.button.delete.label" />'  /></span>
	                </spring-form:form>
                </sec:authorize>
               	<sec:authorize access="!hasRole('ROLE_SUPERVISOR')">
              		<span class="button">
               			<c:url value="/api/user/edit" var="actionUrl"/>
              				<a class="edit" href="${actionUrl}"><spring:message code="default.button.edit.label" /></a>
              		</span>
               	</sec:authorize>
            </div>
        </div>
    </body>
</html>
