<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="/spring"%>
<%@ taglib prefix="spring-form" uri="/spring-form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
<title><spring:message code="mediaitem.edit.title" />
</title>
<link rel="stylesheet"
	href="<c:url value='/css/ui-lightness/jquery-ui-btnautocsortdatepsld.css' />" />
<script type="text/javascript"
	src="<c:url value="/js/jquery-ui-btnautocsortdatepsld.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/js/jquery-ui-datepicker-fr.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/js/jquery-ui-timepicker.js" />"></script>
<link rel="stylesheet"
	href="<c:url value='/css/ui-lightness/jquery-ui-timepicker.css' />" />
</head>
<body>
	<div class="body">
		<h1>
			<spring:message code="default.edit.label" arguments="un �pisode" />
		</h1>
		<c:if test="${errormess != null}">
			<div class="message">
				<spring:message code="${errormess}" />
			</div>
		</c:if>
		<c:url value='/api/admin/media/update' var="actionUrl" />
		<spring-form:form action="${actionUrl}" modelAttribute="mediaItem">
			<div class="dialog">
				<table>
					<tbody>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.emission.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:hidden
									id="loadEm" path="emission.id" /> <input class="longfield"
								id="emissionAutoComplete" maxlength="150"
								value="${mediaItem.emission.title} (${mediaItem.emission.name})" />
								<spring-form:errors element="div" cssClass="errors"
									path="emission.name" />
								<p id="log"></p></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.title.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:input
									path="title" maxlength="150" cssClass="longfield" /><spring-form:errors
									element="div" cssClass="errors" path="title" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.subtitle.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:input
									path="subtitle" maxlength="150" cssClass="longfield" /> <spring-form:errors
									element="div" cssClass="errors" path="subtitle" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.path.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:input
									path="path" size="170" maxlength="150" cssClass="longfield" /> <spring-form:errors
									element="div" cssClass="errors" path="path" /> <%-- <avail:overJson url="/admin/media" field="path" ><spring:message code="default.availability.verify" /></avail:overJson> --%>
							</td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.imgpath.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:input
									path="imgPath" maxlength="150" cssClass="longfield" /> <spring-form:errors
									element="div" cssClass="errors" path="imgPath" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.type.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:select
									path="type">
									<spring-form:option value="" label="S�lectionnez" />
									<spring-form:options items="${mediasEnum}" />
								</spring-form:select> <spring-form:errors element="div" cssClass="errors" path="type" />
							</td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.description.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:textarea
									path="description" rows="5" cols="50" /> <spring-form:errors
									element="div" cssClass="errors" path="description" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.pubdate.label" />
							</label></td>
							<td valign="top" class="value">
								<spring-form:input id="dateempicker" path="pubDate" maxlength="25" /> 
								<spring-form:errors element="div" cssClass="errors" path="pubDate" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.duration.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:input
									readonly="true" path="duration" maxlength="25" /> <spring-form:errors
									element="div" cssClass="errors" path="duration" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.author.pick" />
							</label></td>
							<td valign="top" class="value"><input class="longfield"
								id="intervenantAutoComplete" maxlength="150" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.author.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:input
									id="miAuthor" path="author" maxlength="128"
									cssClass="longfield" /> <spring-form:errors element="div"
									cssClass="errors" path="author" /></td>
						</tr>
						<tr class="prop">
                            <td valign="top" class="name">
                                <label for="code"><spring:message code="mediaitem.category.label" /></label>
                            </td>
                            <td valign="top" class="value">
                            	<spring-form:input  path="category" size="100" maxlength="128" />
                                <spring-form:errors element="div" cssClass="errors" path="category" />
                            </td>
                        </tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.keyword.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:input
									path="keywords" size="100" maxlength="128" /> <spring-form:errors
									element="div" cssClass="errors" path="keywords" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.episode.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:input
									path="episodeNumber" maxlength="4" /> <spring-form:errors
									element="div" cssClass="errors" path="episodeNumber" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.isPv.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:errors
									element="div" cssClass="errors" path="isPv" /> <spring-form:checkbox
									path="isPv" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><spring:message
									code="mediaitem.status.label" />
							</td>
							<td valign="top" class="value"><spring-form:errors
									element="div" cssClass="errors" path="status" /> <spring-form:checkbox
									path="status" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.isRef.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:errors
									element="div" cssClass="errors" path="isRef" /> <spring-form:checkbox
									path="isRef" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.explicit.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:errors
									element="div" cssClass="errors" path="explicit" /> <spring-form:checkbox
									path="explicit" /></td>
						</tr>
						<tr class="prop">
							<td valign="top" class="name"><label for="code"><spring:message
										code="mediaitem.blocked.label" />
							</label></td>
							<td valign="top" class="value"><spring-form:errors
									element="div" cssClass="errors" path="blocked" /> <spring-form:checkbox
									path="blocked" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="buttons">
				<spring-form:hidden path="id" />
				<sec:authorize access="isAuthenticated()">
					<sec:authentication property='principal.username' var="usernamevar" />
					<input type="hidden" id="lastmodifier" name="lastmodifier" value="${usernamevar}" />
				</sec:authorize>
				<sec:authorize access="!isAuthenticated()">
					<input type="hidden" id="lastmodifier" name="lastmodifier" value="anonymous" />
				</sec:authorize>
				<span class="button"><input type="submit" name="update"
					class="save"
					value='<spring:message code="default.button.update.label" />' />
				</span>
			</div>
		</spring-form:form>
	</div>
	<script type="text/javascript">
        $(document).ready(function(){
        	$(function() {
				$('#dateempicker').datetimepicker($.datepicker.regional[ "fr" ]);
			});
        });
    	$(function() {
    		function log(message) {
    			$("<p/>").text(message).prependTo("#log");
    		}
    		$("#emissionAutoComplete").autocomplete({
    			source: function( request, response ) {
    				$.ajax({
    					url: "<c:url value='/api/admin/emission/ajax.json' />",
    					dataType: "jsonp",
    					data: {
    						featureClass: "P",
    						style: "full",
    						maxRows: 12,
    						name_startsWith: request.term
    					},
    					success: function(data) {
    						response($.map(data, function(item) {
    							return {
    								label: item.title+' ('+item.name+') ',
    								value: item.title,
    								item: item
    							};
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
    				$('#loadEm').val(ui.item.item.id);
    				/* $('#loadEm').load("<c:url value='/api/admin/intervenant/addEm/' />" + ui.item.item.id, null, function(){
    				}); */
    			},
    			open: function() {
    				$(this).removeClass("ui-corner-all").addClass("ui-corner-top");
    			},
    			close: function() {
    				$(this).removeClass("ui-corner-top").addClass("ui-corner-all");
    			}
    		});
    		$( "#intervenantAutoComplete" ).autocomplete({
    			source: function( request, response ) {
    				$.ajax({
    					url: "<c:url value='/api/admin/intervenant/ajax.json' />",
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
    								value: "",
    								item: item
    							}
    						}));
    					}
    				});
    			},
    			minLength: 2,
    			select: function( event, ui ) {
    				$('#miAuthor').val(ui.item.item.name);
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
