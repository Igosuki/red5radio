<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <head>
        <title><spring:message code="user.create.title" /></title>
    </head>
    <body>
        <div class="body">
            <h1><spring:message code="default.create.label" arguments="un utilisateur" /></h1>
            <c:if test="${errormess}">
            <div class="message">${errormess}</div>
            </c:if>
            <spring-form:form action="save" commandName="user" method="post">
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
                                    <label for="code"><spring:message code="user.password.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:errors element="div" cssClass="errors" path="password" />
                                    <spring-form:password path="password" maxlength="150" />
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
                                	<spring-form:errors element="div" cssClass="errors" path="enabled" />
                                    <spring-form:checkbox path="enabled" />
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
                    <span class="button"><input type="submit" name="create" class="save" value='<spring:message code="default.button.create.label" />' /></span>
                </div>
            </spring-form:form>
        </div>
    </body>
</html>
