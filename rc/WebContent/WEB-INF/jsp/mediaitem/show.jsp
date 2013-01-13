<%@page import="com.gepsensradio.hbeans.MediaItem"%>
<%@page import="java.net.URLEncoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="/spring"%>
<%@ taglib prefix="spring-form" uri="/spring-form"%>
<html>
<head>
<title><spring:message code="mediaitem.show.title" />
</title>
<script type="text/javascript"
	src="<c:url value='/js/flowplayer-3.2.6.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/js/jwplayer.js' />"></script>
<script type="text/javascript" src="<c:url value='/js/swfobject.js' />"></script>
</head>
<body>
	<div class="body">
		<h1>
			<spring:message code="default.show.label" arguments="un �pisode" />
		</h1>
		<c:if test="${flash.message}">
			<div class="message">${flash.message}</div>
		</c:if>
		<div class="dialog">
			<table>
				<tbody>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.emission.label" /></td>
						<td valign="top" class="value">${mediaItem.emission.name}
							(${mediaItem.emission.title})</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.title.label" /></td>
						<td valign="top" class="value">${mediaItem.title}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.subtitle.label" /></td>
						<td valign="top" class="value">${mediaItem.subtitle}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.path.label" /></td>
						<td valign="top" class="value">${mediaItem.path}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.imgpath.label" /></td>
						<td valign="top" class="value">${mediaItem.imgPath}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.type.label" /></td>
						<td valign="top" class="value">${mediaItem.type}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.description.label" /></td>
						<td valign="top" class="value"><textarea rows="5" cols="50"
								contenteditable="false">${mediaItem.description}</textarea></td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.pubdate.label" /></td>
						<td valign="top" class="value">${mediaItem.pubDate}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.duration.label" /></td>
						<td valign="top" class="value">${mediaItem.duration}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.size.label" /></td>
						<td valign="top" class="value">${mediaItem.size} Mo</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.category.label" /></td>
						<td valign="top" class="value">${mediaItem.category}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.author.label" /></td>
						<td valign="top" class="value">${mediaItem.author}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.keyword.label" /></td>
						<td valign="top" class="value">${mediaItem.keywords}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.episode.label" /></td>
						<td valign="top" class="value">${mediaItem.episodeNumber}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.lastmodifier.label" /></td>
						<td valign="top" class="value">${mediaItem.lastmodifier}</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.isPv.label" /></td>
						<td valign="top" class="value"><input type="checkbox"
							<c:if test="${mediaItem.isPv}" >checked</c:if> /></td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.status.label" /></td>
						<td valign="top" class="value"><input type="checkbox"
							<c:if test="${mediaItem.status}" >checked</c:if> /></td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.isRef.label" /></td>
						<td valign="top" class="value"><input type="checkbox"
							<c:if test="${mediaItem.isRef}" >checked</c:if> /></td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.explicit.label" /></td>
						<td valign="top" class="value"><input type="checkbox"
							<c:if test="${mediaItem.explicit}" >checked</c:if> /></td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.blocked.label" /></td>
						<td valign="top" class="value"><input type="checkbox"
							<c:if test="${mediaItem.blocked}" >checked</c:if> /></td>
					</tr>
					<c:choose>
						<c:when test="${mediaItem.accesskey != null}">
							<c:set var="pathkey" value="${mediaItem.accesskey}" />
						</c:when>
						<c:otherwise>
							<c:set var="pathkey" value="${mediaItem.path}" />
						</c:otherwise>
					</c:choose>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.url.label" /></td>
						<td valign="top" class="value"><input type="text"
							contenteditable="false"
							value="http://<%=request.getServerName() %>:<%=request.getServerPort() %><%=request.getContextPath() %>/rest/media/play/${pathkey}.${mediaItem.type.term}"
							style="width: 750px;" /></td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><label for="code"><spring:message
									code="mediaitem.httppure.listen" />
						</label></td>
						<td valign="top" class="value">
							<div id="mediaplayer" style="width: 750px;">.</div></td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.url.label" /></td>
						<td valign="top" class="value"><input type="text"
							contenteditable="false"
							value="rtmp://<%=request.getServerName() %><%=request.getContextPath() %>/${pathkey}"
							style="width: 750px;" /></td>
					</tr>

					<%-- <tr class="prop">
						<td valign="top" class="name"><label for="code"><spring:message
									code="mediaitem.action.listen" />
						</label></td>
						<td valign="top" class="value">
							<div id="audio"
								style="display: block; width: 750px; height: 30px;"
								href="${mediaItem.type.term}:${pathkey}"></div></td>
					</tr> --%>
					<tr class="prop">
						<td valign="top" class="name"><label for="code"><spring:message
									code="mediaitem.rtmp.listen" />
						</label></td>
						<td valign="top" class="value">
							<div id="mediaplayer2" style="width: 750px;">.</div></td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><spring:message
								code="mediaitem.url.label" /></td>
						<td valign="top" class="value"><input type="text"
							contenteditable="false"
							value="http://<%=request.getServerName() %>/media${mediaItem.path}"
							style="width: 750px;" /></td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><label for="code"><spring:message
									code="mediaitem.httppseudo.listen" />
						</label></td>
						<td valign="top" class="value">
							<div id="mediaplayer3" style="width: 750px;">.</div></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="buttons">
			<c:url value="/api/admin/media/index" var="actionUrl" />
			<spring-form:form action="${actionUrl}" method="post"
				modelAttribute="mediaItem">
				<spring-form:hidden path="id" />
				<span class="button"><input type="submit" name="edit"
					class="edit"
					value='<spring:message code="default.button.edit.label" />' />
				</span>
				<span class="button"><input type="submit" name="delete"
					class="delete"
					value='<spring:message code="default.button.delete.label" />' />
				</span>
			</spring-form:form>
		</div>
	</div>
	
	<script type="text/javascript">
        $(document).ready(function(){
			//install flowplayer into container
			<%-- $f("audio", "<c:url value='/flash/flowplayer-3.2.7.swf' />", {
				plugins: {
					rtmp: {
						url: "<c:url value='/flash/flowplayer.rtmp-3.2.3.swf' />",
					   	netConnectionUrl: 'rtmp://<%=request.getServerName() %><%=request.getContextPath() %>/',
			
					   	// make the rtmp plugin query the stream length from the server
					   	durationFunc: 'getStreamLength'
					},
					controls: {
						fullscreen: false,
						height: 30,
						autoHide: false
					}
				},
				clip: {
					// it's possible to stream audio by using the RTMP plugin
					provider: 'rtmp',
					autoPlay: false
				}
			}); --%>
			jwplayer('mediaplayer3').setup({
		      'flashplayer': '<c:url value="/flash/player.swf" />',
		      'id': 'playerID',
		      'width': '750',
		      'height': '24',
		      'controlbar': 'bottom',
		      'provider': 'http',
		      'file': 'http://<%=request.getServerName() %>/media${mediaItem.path}',
		      'http.startparam':'0'
		    });
			jwplayer('mediaplayer2').setup({
		      'flashplayer': '<c:url value="/flash/player.swf" />',
		      'id': 'playerID',
		      'width': '750',
		      'height': '24',
		      'controlbar': 'bottom',
		      'streamer' : 'rtmp://<%=request.getServerName() %><%=request.getContextPath() %>/',
		      'file': '${mediaItem.type.term}:${pathkey}',
		    });
			jwplayer('mediaplayer').setup({
		      'flashplayer': '<c:url value="/flash/player.swf" />',
		      'id': 'playerID',
		      'width': '750',
		      'height': '24',
		      'controlbar': 'bottom',
		      'file': 'http://<%=request.getServerName() %>:<%=request.getServerPort() %><%=request.getContextPath() %>/rest/media/play/${pathkey}.mp3',
		    });
        });
        </script>
</body>
</html>
