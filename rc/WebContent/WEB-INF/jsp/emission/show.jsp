<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<html>
    <head>
        <title><spring:message code="emission.show.title" /></title>
                 <link rel="stylesheet" href="<c:url value='/css/tablesorter.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery.tablesorter.js" />" ></script>
        <script type="text/javascript" src="<c:url value='/js/flowplayer-3.2.6.min.js' />" ></script>
        <script type="text/javascript" src="<c:url value='/js/flowplayer.playlist-3.0.8.js' />" ></script>
        <script type="text/javascript" src="<c:url value="/js/radioc.js" />" ></script>
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery-ui.js" />" ></script>
    </head>
    <body>
        <div class="body">
            <h1><spring:message code="default.show.label" arguments="une émission" /></h1>
            <c:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </c:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><spring:message code="emission.id.label" /></td>
                            
                            <td valign="top" class="value">${emission.id}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><spring:message code="emission.name.label" /></td>
                            <td valign="top" class="value">${emission.name}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><spring:message code="emission.title.label" /></td>
                            <td valign="top" class="value">${emission.title}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><spring:message code="emission.subtitle.label" /></td>
                            <td valign="top" class="value">${emission.subtitle}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><spring:message code="emission.weekday.label" /></td>
                            <td valign="top" class="value">${emission.weekday}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name"><spring:message code="emission.emtime.label" /></td>
                            <td valign="top" class="value">${emission.emtime}</td>
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
                            	<label for="code"><spring:message code="emission.suppleants.label" /></label>
                            </td>
                            <td valign="top" >
                            	<div id="loadEm">
                            		<jsp:include page="suppleants.jsp" />
                            	</div>
                            </td>
                        </tr>
                        <tr class="prop">
	                         <td valign="top" class="name">
	                             <label for="code"><spring:message code="emission.podcastable.label" /></label>
	                         </td>
	                         <td valign="top" class="value">
	                         <input type="checkbox" <c:if test="${emission.podcastable}" >checked</c:if> checked />
	                         </td>
                        </tr>
                        <tr class="prop">
	                         <td valign="top" class="name">
	                             <label for="code"><spring:message code="emission.complete.label" /></label>
	                         </td>
	                         <td valign="top" class="value">
	                         	<input type="checkbox" <c:if test="${emission.complete}" >checked</c:if> checked />
	                         </td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name">
                                <label for="code"><spring:message code="emission.category.label" /></label>
                            </td>
                           	<td valign="top" class="value">${emission.category}</td>
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name">
                                <label for="code"><spring:message code="emission.keywords.label" /></label>
                            </td>
							<td valign="top" class="value">${emission.keywords}</td>                            	
                        </tr>
                        <tr class="prop">
                            <td valign="top" class="name">
                                <label for="code"><spring:message code="emission.summary.label" /></label>
                            </td>
                            <td valign="top" class="value">
                                <textarea rows="10" cols="50" contenteditable="false" >${emission.summary}</textarea>
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
            	<c:url value="/rc/admin/emission/index" var="actionUrl"/>
                <spring-form:form action="${actionUrl}" method="post" modelAttribute="emission">
                	<spring-form:hidden path="id"/>
                    <span class="button"><input type="submit" name="edit" class="edit" value='<spring:message code="default.button.edit.label" />' /></span>
                    <span class="button"><input type="submit" name="delete" class="delete" value='<spring:message code="default.button.delete.label" />'  /></span>
                </spring-form:form>
            </div>
        </div>
        <script>
        	$(document).ready(function () {
        		$("#intervenantTable").tablesorter({
        			headers: {
        				0: {
        					sorter: false
        				}
        			}
        		});
        		<c:if test="${fn:length(emission.episodes) gt 0}">
	        		$f("audio", "<c:url value='/flash/flowplayer-3.2.7.swf' />", {
	    				plugins: {
	    					rtmp: {
	    						url: "<c:url value='/flash/flowplayer.rtmp-3.2.3.swf' />",
	    					   	netConnectionUrl: 'rtmp://localhost/rc/',
	    						
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
	    				    	title: '${ep.title}'
	    				    },
	    				    </c:forEach>
	    				]
	    			}).playlist("#playlist", {loop:true});
	        	</c:if>
        	});
        </script>
    </body>
</html>
