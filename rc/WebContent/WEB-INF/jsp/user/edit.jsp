<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <title><spring:message code="user.edit.title" /></title>
        <link rel="stylesheet" href="<c:url value='/css/tablesorter.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery.tablesorter.js" />" ></script>
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui-btnautocsort.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery-ui-btnautocsort.js" />" ></script>
        <script type="text/javascript" src="<c:url value="/js/radioc.js" />" ></script>
        <style>
			#city { width: 25em; }
		</style>
    </head>
    <body>
        <div class="body">
            <h1><spring:message code="default.edit.label" arguments="un utilisateur" /></h1>
            <c:if test="${errormess != null}">
            <div class="message"><spring:message code="${errormess}" /></div>
            </c:if>
            <sec:authorize access="hasRole('ROLE_SUPERVISOR')">
            	<c:url value='/rc/admin/user/update' var="actionUrl" />
            </sec:authorize>
            <sec:authorize access="!hasRole('ROLE_SUPERVISOR')">
            	<c:url value='/rc/user/update' var="actionUrl" />
            </sec:authorize>
            <spring-form:form action="${actionUrl}" modelAttribute="user">
                <div class="dialog">
                    <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="user.name.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="userName" maxlength="150" />
                                    <spring-form:errors element="div" cssClass="errors" path="userName" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="user.firstname.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="firstname" maxlength="150" />
                                    <spring-form:errors element="div" cssClass="errors" path="firstname" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="user.lastname.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="lastname" maxlength="150" />
                                    <spring-form:errors element="div" cssClass="errors" path="lastname" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="user.email.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="email" maxlength="150" />
                                    <spring-form:errors element="div" cssClass="errors" path="email" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="user.enabled.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                    <spring-form:checkbox path="enabled" />
                                    <spring-form:errors element="div" cssClass="errors" path="enabled" />
                                </td>
                            </tr>
	                            <sec:authorize access="hasRole('ROLE_SUPERVISOR')">
			                		 <tr class="prop">
		                                <td valign="top" class="name">
		                                    <label for="code"><spring:message code="user.roles.label" /></label>
		                                </td>
		                                <td valign="top" class="value">
		                                	<spring-form:select path="roles[0].name">
		                                		<spring-form:option value=""><spring:message code='role.choose.label' /></spring-form:option>
		                                		<spring-form:options items="${roleValues}" itemValue="name" />
		                                	</spring-form:select>
		                                    <spring-form:errors element="div" cssClass="errors" path="roles" />
		                                </td>
		                             </tr>
			                	</sec:authorize>
                        </tbody>
                    </table>
                </div>
               	<div class="buttons">
                	<spring-form:hidden path="id"/>
                	<sec:authorize access="hasRole('ROLE_SUPERVISOR')">
                		<span class="button">
                			<c:url value="/rc/admin/user/pwdchange" var="pwdUrl"/>
               				<a class="edit" href="${pwdUrl}/${user.id}"><spring:message code="button.changepwd.label" /></a>
               			</span>
                	</sec:authorize>
                	<sec:authorize access="!hasRole('ROLE_SUPERVISOR')">
                		<span class="button">
                			<c:url value="/rc/user/pwdchange" var="pwdUrl"/>
               				<a class="edit" href="${pwdUrl}"><spring:message code="button.changepwd.label" /></a>
               			</span>
                	</sec:authorize>
                    <span class="button"><input type="submit" name="update" class="save" value='<spring:message code="default.button.update.label" />' /></span>
                </div>
            </spring-form:form>
        </div>
    </body>
</html>
