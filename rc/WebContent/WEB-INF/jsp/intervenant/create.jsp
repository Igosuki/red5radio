<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<html>
    <head>
        <title><spring:message code="intervenant.create.title" /></title>
    </head>
    <body>
        <div class="body">
            <h1><spring:message code="default.create.label" arguments="un patron d'émission" /></h1>
            <c:if test="${errormess}">
            <div class="message">${errormess}</div>
            </c:if>
            <spring-form:form action="save" commandName="intervenant" method="post">
                <div class="dialog">
                    <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="intervenant.name.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="name" maxlength="150" />
                                    <spring-form:errors element="div" cssClass="errors" path="name" />
                                </td>
                            </tr>
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
