<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<html>
    <head>
        <title><spring:message code="intervenant.edit.title" /></title>
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
            <h1><spring:message code="default.edit.label" arguments="un patron d'émission" /></h1>
            <c:if test="${errormess != null}">
            <div class="message"><spring:message code="${errormess}" /></div>
            </c:if>
            <c:url value='/rc/admin/intervenant/update' var="actionUrl" />
            <spring-form:form action="${actionUrl}" modelAttribute="intervenant">
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
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="intervenant.email.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                	<spring-form:input path="email" maxlength="150" />
                                    <spring-form:errors element="div" cssClass="errors" path="email" />
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="intervenant.emissionsadd.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                    <input id="emissionAutoComplete" maxlength="150" />
                                    <p id="log"></p>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                	<label for="code"><spring:message code="intervenant.emissions.label" /></label>
                                </td>
                                <td valign="top" >
                                	<div id="loadEm">
                                		<jsp:include page="emission.jsp" />
                                	</div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                	<spring-form:hidden path="id"/>
                    <span class="button"><input type="submit" name="update" class="save" value='<spring:message code="default.button.update.label" />' /></span>
                </div>
            </spring-form:form>
        </div>
        <script type="text/javascript">
        	$(document).ready(function () {
        		$("#emissionTable").tablesorter({
        			headers: {
        				0: {
        					sorter: false
        				}
        			}
        		});
        	});
        	$(function() {
        		function log( message ) {
        			$( "<p/>" ).text( message ).prependTo( "#log" );
        		}
        		$( "#emissionAutoComplete" ).autocomplete({
        			source: function( request, response ) {
        				$.ajax({
        					url: "<c:url value='/rc/admin/emission/ajax.json' />",
        					dataType: "jsonp",
        					data: {
        						featureClass: "P",
        						style: "full",
        						maxRows: 12,
        						name_startsWith: request.term
        					},
        					success: function( data ) {
        						response( $.map( data, function( item ) {
        							return {
        								label: item.name,
        								value: item.id,
        								item: item
        							}
        						}));
        					}
        				});
        			},
        			minLength: 2,
        			select: function( event, ui ) {
        				$("#log").empty();
        				log( ui.item ?
        					"<spring:message code='default.selected.message' /> : " + ui.item.label :
        					"<spring:message code='default.noneselected.message' />" + this.value);
        				$('#loadEm').load("<c:url value='/rc/admin/intervenant/addEm/' />" + ui.item.item.id, null, function(){
        					$("#emissionAutoComplete").val('');
        				});
        			},
        			open: function() {
        				$( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
        			},
        			close: function() {
        				$( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
        			}
        		});
        	});
        </script>
    </body>
</html>
