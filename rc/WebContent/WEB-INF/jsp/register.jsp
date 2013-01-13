<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<head>
  <title>Red5 Admin</title>
  <meta content="text/html; charset=iso-8859-1" http-equiv="Content-Type" />
  <style type="text/css" media="screen">
html, body, #containerA, #containerB { height: 100%;
}
.formbg { background-color: rgb(238, 238, 238);
}
.formtable { border: 2px solid rgb(183, 186, 188);
}

.formtext { font-family: Arial,Helvetica,sans-serif;
    font-size: 12px;
    color: rgb(11, 51, 73);
}

body { margin: 0pt;
padding: 0pt;
overflow: hidden;
background-color: rgb(250, 250, 250);
}
.error { 
	font-family: Arial,Helvetica,sans-serif;
	font-size: 12px;
	color: red; 
}
  </style>
</head>
<body>
<table style="text-align: left; width: 100%; height: 100%;" border="0" cellpadding="0" cellspacing="10">
  <tbody>
    <tr>
      <td height="54"><img alt="" src="<c:url value='/img/logo.png' />" /></td>
    </tr>
    <tr class="formbg">
      <td align="center" valign="middle">
      <table style="width: 400px;" class="formtable" border="0" cellpadding="0" cellspacing="2">
      <tr>
      	<td class="formtext">&nbsp;<b>Register Admin User</b></td>
      </tr>
      <tr>
      <td>
      <c:if test="${errormess != null}">
      	<div class="message"><spring:message code="${errormess}" /></div>
      </c:if>
      <c:url value='/api/register/submit' var="actionUrl" />
      <spring-form:form action="${actionUrl}" modelAttribute="user">
     	 <div class="dialog">
	        <table style="width: 400px;"  border="0" cellpadding="0" cellspacing="5">
	          <tbody>
	           		<tr class="prop">
	                  <td valign="top" class="name">
	                      <label for="code"><spring:message code="user.name.label" /></label>
	                  </td>
	                  <td valign="top" class="value">
	                  	<spring-form:input path="username" maxlength="150" />
	                    <spring-form:errors element="div" cssClass="errors" path="username" />
	                    </td>
	                </tr>
	                <tr class="prop">
	                   <td valign="top" class="name">
	                       <label for="code"><spring:message code="user.password.label" /></label>
	                   </td>
	                   <td valign="top" class="value">
							<spring-form:errors element="div" cssClass="errors" path="password" />
							<spring-form:password path="password" maxlength="32" />
	                   </td>
					</tr>
				</tbody>
			</table>
	    </div>
        <div class="buttons">
                    <span class="button"><input type="submit" name="create" class="save" value='<spring:message code="default.button.create.label" />' /></span>
        </div>
      </spring-form:form>
      </td>
      </tr>
      </table>
      </td>
    </tr>

  </tbody>
</table>
<br />
</body>
</html>