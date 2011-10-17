<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="/spring" %>
<html>
    <head>
        <title><spring:message code="mediaitem.list.title" /></title>
        <link rel="stylesheet" href="<c:url value='/css/displaytag.css' />" />
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui-btnautocsort.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery-ui-btnautocsort.js" />" ></script>
    </head>
    <body>
        <div class="body">
            <h1><spring:message code="mediaitem.list.title" /></h1>
            <c:if test="${errormess}">
            <div class="message">${errormess}</div>
            </c:if>
            <div class="list">
            	<c:url value="/rc/admin/media/list" var="actionList"/>
            	<c:url value="/rc/admin/media/edit/" var="actionEdit"/>
            	<c:url value="/rc/admin/media/show/" var="actionShow"/>
            	<c:choose>
	            	<c:when test="${paging == true}" >
		                <display:table requestURIcontext="false" requestURI="${actionList}"  
		                				id="interv" name="pagedList"  decorator="com.radioc.display.deco.MediaItemDecorator" 
		                				size="${pagedList.fullListSize}" list="pagedList" pagesize="${pagedList.objectsPerPage}"
		                				sort="page" partialList="true">
		                	<display:column style="width: 10%;">
		                		<a class="edit" href="${actionEdit}${interv.id}">${default.button.edit.label}</a>
		                		<a class="show" href="${actionShow}${interv.id}">${default.button.edit.label}</a>
		                	</display:column>
		                	<display:column headerClass="sortable" sortable="true" property="title" titleKey="mediaitem.title.label" />
		                	<display:column property="subtitle" titleKey="mediaitem.subtitle.label" />
		                	<display:column headerClass="sortable"  sortable="true" property="type" titleKey="mediaitem.type.label" />
		                	<display:column headerClass="sortable" sortable="true" property="pubDate" titleKey="mediaitem.pubdate.label" />
		                	<display:column property="emission" titleKey="mediaitem.emission.label" />
		                </display:table>
		            </c:when>
		            <c:otherwise>
		            	<display:table id="interv" name="list"  decorator="com.radioc.display.deco.MediaItemDecorator" 
		            					defaultsort="1" defaultorder="ascending" sort="page">
		                	<display:column style="width: 10%;">
		                		<a class="edit" href="${actionEdit}${interv.id}">${default.button.edit.label}</a>
		                		<a class="show" href="${actionShow}${interv.id}">${default.button.edit.label}</a>
		                	</display:column>
		                	<display:column headerClass="sortable" sortable="true" property="title" titleKey="mediaitem.title.label" />
		                	<display:column property="subtitle" titleKey="mediaitem.subtitle.label" />
		                	<display:column headerClass="sortable"  sortable="true" property="type" titleKey="mediaitem.type.label" />
		                	<display:column headerClass="sortable" sortable="true" property="pubDate" titleKey="mediaitem.pubdate.label" />
		                	<display:column property="emission" titleKey="mediaitem.emission.label" />
		                </display:table>
		            </c:otherwise>
	            </c:choose>
            </div>
        </div>
         <script type="text/javascript">
        	$(function() {
        		$("a.edit").button({
        			icons: {
        				primary: "ui-icon-wrench"
        			},
        			text: false
        		});
        		$("a.show").button({
        			icons: {
        				primary: "ui-icon-search"
        			},
        			text: false
        		});
        	});
        </script>
    </body>
</html>
