<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
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
            <c:url value='/rc/user/pwdsave' var="actionUrl" />
            <spring-form:form action="${actionUrl}" modelAttribute="userform">
                <div class="dialog">
                	<spring-form:errors element="div" cssClass="errors" path="*" />
                    <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="user.newpassword.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                    <spring-form:password path="password1" maxlength="34" size="35" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="user.repeatpassword.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                    <spring-form:password path="password2" maxlength="34" size="35" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
               	<div class="buttons">
                	<spring-form:hidden path="userId"/>
                    <span class="button"><input type="submit" name="update" class="save" value='<spring:message code="default.button.update.label" />' /></span>
                </div>
            </spring-form:form>
        </div>
    </body>
</html>
