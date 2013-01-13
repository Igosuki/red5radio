<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<html>
    <head>
        <title><spring:message code="emission.list.title" /></title>
        <link rel="stylesheet" href="<c:url value='/css/displaytag.css' />" />
        <link rel="stylesheet" href="<c:url value='/css/ui-lightness/jquery-ui-btnautocsort.css' />" />
        <link rel="stylesheet" href="<c:url value='/css/search.css' />" />
        <script type="text/javascript" src="<c:url value="/js/jquery-ui-btnautocsort.js" />" ></script>
    </head>
    <body>
        <div class="body" class="bodyfiller">
        	<div>
        		<h1><spring:message code="default.list.label" arguments="des �missions" /></h1>
        		<br/>
            	<spring-form:form  cssClass="searchform" commandName="term" cssStyle="padding-left: 10px; " action="search" method="GET">
					<input name="term" style="input:hover { background: #b2d1ff;}" class="searchfield" type="text" value="Rechercher..." onfocus="if (this.value == 'Rechercher...') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Rechercher...';}">
					<input class="searchclass" type="submit" value="Chercher" />
				</spring-form:form>
			</div>
            <c:if test="${errormess}">
            <div class="message">${errormess}</div>
            </c:if>
            <div class="list" >
            	<c:url value="/api/admin/emission/edit/" var="actionEdit"/>
            	<c:url value="/api/admin/emission/show/" var="actionShow"/>
            	<c:url value="/api/admin/emission/list" var="actionList"/>
            	<c:url value="/api/itunesfeed/" var="actionRSS"/>
            	<jsp:include page="../paging.jsp" />
            	<c:choose>
	            	<c:when test="${paging == true}" >
		                <display:table requestURIcontext="false" requestURI="${actionList}" id="interv" name="pagedList"  
		            				decorator="com.gepsensradio.display.deco.EmissionDecorator"  sort="page" partialList="true"
		            				size="${pagedList.fullListSize}" list="pagedList" pagesize="${pagedList.objectsPerPage}"
		            				class="pagedListTable" >
		                	<display:column >
		                		<a class="edit" href="${actionEdit}${interv.id}">${default.button.edit.label}</a>
		                		<a class="show" href="${actionShow}${interv.id}">${default.button.edit.label}</a>
		                		<a class="rss" href="${actionRSS}${interv.id}.xml">${default.button.edit.label}</a>
		                	</display:column>
		                	<display:column headerClass="sortable" sortable="true" property="title" titleKey="emission.title.label" />
		                	<display:column headerClass="sortable" sortable="true" sortName="name" property="name" titleKey="emission.name.label" />
		                	<display:column headerClass="sortable" property="intervenants" titleKey="emission.intervenants.label" />
		                	<display:column headerClass="sortable" property="suppleants" titleKey="emission.suppleants.label" />
		                	<display:column headerClass="sortable"  sortable="true" property="themes" titleKey="emission.themes.label" />
		                	<display:column headerClass="sortable"  sortable="true" property="weekday" titleKey="emission.weekday.label" />
		                	<display:column headerClass="sortable"  sortable="true" property="week" titleKey="emission.week.label" />
		                </display:table>
		            </c:when>
		            <c:otherwise>
		            	<display:table requestURIcontext="false" requestURI="${actionList}" id="interv" name="pagedList"  
		            				decorator="com.gepsensradio.display.deco.EmissionDecorator"  sort="page" partialList="false"
		            				size="${pagedList.fullListSize}" list="pagedList" pagesize="${pagedList.objectsPerPage}"
		            				class="pagedListTable" >
		                	<display:column >
		                		<a class="edit" href="${actionEdit}${interv.id}">${default.button.edit.label}</a>
		                		<a class="show" href="${actionShow}${interv.id}">${default.button.edit.label}</a>
		                		<a class="rss" href="${actionRSS}${interv.id}.xml">${default.button.edit.label}</a>
		                	</display:column>
		                	<display:column headerClass="sortable" sortable="true" property="title" titleKey="emission.title.label" />
		                	<display:column headerClass="sortable" sortable="true" sortName="name" property="name" titleKey="emission.name.label" />
		                	<display:column headerClass="sortable" property="intervenants" titleKey="emission.intervenants.label" />
		                	<display:column headerClass="sortable" property="suppleants" titleKey="emission.suppleants.label" />
		                	<display:column headerClass="sortable"  sortable="true" property="themes" titleKey="emission.themes.label" />
		                	<display:column headerClass="sortable"  sortable="true" property="weekday" titleKey="emission.weekday.label" />
		                	<display:column headerClass="sortable"  sortable="true" property="week" titleKey="emission.week.label" />
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
        		$(".searchclass").button({
        			icons: { primary: "ui-icon-search" },
        			text: true
        		});
        		$("a.rss").button({
        			icons: {
        				primary: "ui-icon-script"
        			},
        			text: false
        		});
        	});
        </script>
    </body>
</html>
