<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<html>
    <head>
        <title><spring:message code="emission.create.title" /></title>
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery-ui.js" />" ></script>
        <script type="text/javascript" src="<c:url value="/js/jquery-ui-datepicker-fr.js" />" ></script>
        <script type="text/javascript" src="<c:url value="/js/jquery-ui-timepicker.js" />" ></script>
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui-timepicker.css' />" />
        <link rel="stylesheet" href="<c:url value='/css/selectable.css' />" />
        <script type="text/javascript">
	        $(document).ready(function() {
	        	$( "#selectable" ).selectable({
					stop: function() {
						var result = $( "#weekday" ).val('');
						$( ".ui-selected", this ).each(function() {
							var val = $(this).text();
							if(result.val().length > 0){
								result.val(result.val()+',');
							}
							result.val(result.val()+val);
						});
					}
				});
				if($("#weekday").val() !== ""){
					var days = $("#weekday").val().split(",");
					$("#selectable li").each(function() {
						var selectable = $(this);
						$(days).each(function(){
							if(selectable.text() == this){
								selectable.addClass("ui-selected");
							} 
						});
					});
				}
				$( "#selectableWeek" ).selectable({
					stop: function() {
						var result = $( "#week" ).val('');
						$( ".ui-selected", this ).each(function() {
							var val = $(this).text();
							if(result.val().length > 0){
								result.val(result.val()+',');
							}
							result.val(result.val()+val);
						});
					}
				});
				if($("#week").val() !== ""){
					var days = $("#week").val().split(",");
					$("#selectableWeek li").each(function() {
						var selectable = $(this);
						$(days).each(function(){
							if(selectable.text() == this){
								selectable.addClass("ui-selected");
							} 
						});
					});
				}
			});
		</script>
    </head>
    <body>
        <div class="body">
            <h1><spring:message code="default.create.label" arguments="une émission" /></h1>
            <c:if test="${errormess}">
            <div class="message">${errormess}</div>
            </c:if>
            <spring-form:form action="save" commandName="emission" method="post">
                <div class="dialog">
                    <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="emission.name.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="name" maxlength="150" />
                                    <spring-form:errors element="div" cssClass="errors" path="name" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="emission.title.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="title" maxlength="255" />
                                    <spring-form:errors element="div" cssClass="errors" path="title" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="emission.subtitle.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="subtitle" maxlength="255" />
                                    <spring-form:errors element="div" cssClass="errors" path="subtitle" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="emission.themes.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="themes" maxlength="150" />
                                    <spring-form:errors element="div" cssClass="errors" path="themes" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="emission.weekday.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:errors element="div" cssClass="errors" path="weekday" />
                                	<ul id="selectable" class="selectable">
                                		<li class="ui-widget-content" value="Lundi">Lundi</li>
                                		<li class="ui-widget-content" value="Mardi">Mardi</li>
                                		<li class="ui-widget-content" value="Mercredi">Mercredi</li>
                                		<li class="ui-widget-content" value="Jeudi">Jeudi</li>
                                		<li class="ui-widget-content" value="Vendredi">Vendredi</li>
                                		<li class="ui-widget-content" value="Samedi">Samedi</li>
                                		<li class="ui-widget-content" value="Dimanche">Dimanche</li>
                                	</ul>
                                    <spring-form:hidden id="weekday" path="weekday" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="emission.week.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:errors element="div" cssClass="errors" path="week" />
                                	<ul id="selectableWeek" class="selectable">
                                		<li class="ui-widget-content" value="A">A</li>
                                		<li class="ui-widget-content" value="B">B</li>
                                		<li class="ui-widget-content" value="C">C</li>
                                		<li class="ui-widget-content" value="D">D</li>
                                	</ul>
                                    <spring-form:hidden id="week" path="week" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="emission.emtime.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:errors element="div" cssClass="errors" path="emtime" />
                                    <spring-form:hidden id="emtime" path="emtime" />
                                </td>
                            </tr>
                            <tr class="prop">
	                            <td valign="top" class="name">
	                                <label for="code"><spring:message code="emission.podcastable.label" /></label>
	                            </td>
	                            <td valign="top" class="value">
	                            	<spring-form:errors element="div" cssClass="errors" path="podcastable" />
	                                <spring-form:checkbox path="podcastable" />
	                            </td>
                            </tr>
                            <tr class="prop">
	                            <td valign="top" class="name">
	                                <label for="code"><spring:message code="emission.complete.label" /></label>
	                            </td>
	                            <td valign="top" class="value">
	                            	<spring-form:errors element="div" cssClass="errors" path="complete" />
	                                <spring-form:checkbox path="complete" />
	                            </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="emission.category.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="category" maxlength="150" />
                                    <spring-form:errors element="div" cssClass="errors" path="category" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="emission.keywords.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="keywords" maxlength="150" />
                                    <spring-form:errors element="div" cssClass="errors" path="keywords" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="emission.summary.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:errors element="div" cssClass="errors" path="summary" />
                                    <spring-form:textarea  path="summary" rows="10" cols="50" />
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
        <script>
			$(function() {
				/* $( "#dateempicker" ).datepicker();
				$.datepicker.setDefaults( $.datepicker.regional[ "" ] );
				$( "#dateempicker" ).datepicker( $.datepicker.regional[ "fr" ] ); */
				$('#dateempicker').datetimepicker($.datepicker.regional[ "fr" ]);
			});
		</script>
    </body>
</html>
