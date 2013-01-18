<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<%@ taglib prefix='fn' uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix='strings' uri="http://com.radioc/jstl/strings" %>
<html>
    <head>
        <title><spring:message code="emission.edit.title" /></title>
         <link rel="stylesheet" href="<c:url value='/css/tablesorter.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery.tablesorter.js" />" ></script>
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery-ui.js" />" ></script>
        <link rel="stylesheet" href="<c:url value='/css/selectable.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery-ui-datepicker-fr.js" />" ></script>
        <script type="text/javascript" src="<c:url value="/js/jquery-ui-timepicker.js" />" ></script>
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui-timepicker.css' />" />
        <script type="text/javascript" src="<c:url value='/js/flowplayer-3.2.6.min.js' />" ></script>
        <script type="text/javascript" src="<c:url value='/js/flowplayer.playlist-3.0.8.js' />" ></script>
        <script type="text/javascript" src="<c:url value="/js/radioc.js" />" ></script>
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
            <h1><spring:message code="default.edit.label" arguments="une �mission" /></h1>
            <c:if test="${errormess != null}">
            <div class="message"><spring:message code="${errormess}" /></div>
            </c:if>
            <c:url value='/api/admin/emission/update' var="actionUrl" />
            <spring-form:form action="${actionUrl}" modelAttribute="emission">
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
                                    <div id="weekdaylog"></div>
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
                                    <label for="code"><spring:message code="emission.intervenantsadd.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                    <input id="intervenantAutoComplete" maxlength="150" />
                                    <p id="log"></p>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                	<label for="code"><spring:message code="emission.intervenants.label" /></label>
                                </td>
                                <td valign="top" >
                                	<div id="loadIm">
                                		<jsp:include page="intervenant.jsp" />
                                	</div>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="code"><spring:message code="emission.suppleantsadd.label" /></label>
                                </td>
                                <td valign="top" class="value">
                                    <input id="suppleantAutoComplete" maxlength="150" />
                                    <p id="logSp"></p>
                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                	<label for="code"><spring:message code="emission.suppleants.label" /></label>
                                </td>
                                <td valign="top" >
                                	<div id="loadSp">
                                		<jsp:include page="suppleants.jsp" />
                                	</div>
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
                            <tr class="prop">
	                            <td valign="top" class="name">
	                                <label for="code"><spring:message code="emission.episodes.label" /></label>
	                            </td>
	                            <td valign="top" class="value">
	                            	<div id="playlist" class="clips" style="display:block;width:750px;float:center;">
	                            	</div>
	                            	<div id="audio" style="display:block;width:750px;height:30px;"></div>
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
        <script>
        	$(document).ready(function () {
        		$(function() {
    				$('#dateempicker').datetimepicker($.datepicker.regional[ "fr" ]);
    			});
        		$("#intervenantTable").tablesorter({
        			headers: {
        				0: {
        					sorter: false
        				}
        			}
        		});
        	});
        	
        	$(function() {
        		function log(logId, message ) {
        			$( "<p/>" ).text( message ).prependTo( logId );
        		}
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
        				log("#log", ui.item ?
        					"<spring:message code='default.selected.message' /> : " + ui.item.label :
        					"<spring:message code='default.noneselected.message' />" + ui.item.label);
        				$('#loadIm').load("<c:url value='/api/admin/emission/addIm/' />" + ui.item.item.id, null, function(){
        					$("#intervenantAutoComplete").val('');
        				});
        			},
        			open: function() {
        				$( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
        			},
        			close: function() {
        				$( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
        			}
        		});
        		$( "#suppleantAutoComplete" ).autocomplete({
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
        								value: item.id,
        								item: item
        							}
        						}));
        					}
        				});
        			},
        			minLength: 2,
        			select: function( event, ui ) {
        				$("#logSp").empty();
        				log("#logSp", ui.item ?
        					"<spring:message code='default.selected.message' /> : " + ui.item.label :
        					"<spring:message code='default.noneselected.message' />" + ui.item.label);
        				$('#loadSp').load("<c:url value='/api/admin/emission/addSp/' />" + ui.item.item.id, null, function(){
        					$("#suppleantAutoComplete").val('');
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
		<c:if test="${fn:length(emission.episodes) gt 0}">
			<script type="text/javascript">
				$f("audio", "<c:url value='/flash/flowplayer-3.2.7.swf' />", {
					plugins: {
						rtmp: {
							url: "<c:url value='/flash/flowplayer.rtmp-3.2.3.swf' />",
						   	netConnectionUrl: 'rtmp://localhost/api/',
							
						   	// make the rtmp plugin query the stream length from the server
						   	durationFunc: 'getStreamLength'
						},
						controls: {
							fullscreen: false,
							height: 30,
							autoHide: false,
							playlist: true
						}
					},
					clip: {
						// it's possible to stream audio by using the RTMP plugin
						provider: 'rtmp',
						autoPlay: false,
					},
					playlist: [
							<c:forEach items="${emission.episodes}" var="ep" varStatus="epStatus">
							{
								url: '${ep.type.term}:${ep.path}',
								title: '${strings:escapeJavaScript(ep.title)}'
							},
							</c:forEach>	
						]
				}).playlist("#playlist", {loop:true});
			</script>
		</c:if>
    </body>
</html>
