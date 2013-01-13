<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
<table id="suppleantTable" class="tablesorter" style="width: 30%;">
	<thead>
		<tr>
			<th style="width: 10%;"></th>
			<th><spring:message code="emission.name.label" /></th>
		</tr>
	</thead>
	<tbody>
		
				<c:forEach items="${emission.suppleants}" var="imIter" varStatus="imStatus">
					<tr id="im${imStatus.index}">
						<td><button class="edit" value="${imIter.id}">${default.button.edit.label}</button>
						<td>
							<input type="hidden" name="suppleants[${imStatus.index}].id"  value="${imIter.id}" />
							${imIter.name}
						</td>
					</tr>	
				</c:forEach>
	</tbody>
</table>
<script type="text/javascript">
$(document).ready(function(){
	$(function() {
		var loadUrl = "<c:url value='/api/admin/emission/delSp/' />";
		loadUrlInTable(loadUrl, "#suppleantTable", "#loadSp");
	});
});
</script>