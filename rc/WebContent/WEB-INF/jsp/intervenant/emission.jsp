<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
<table id="emissionTable" class="tablesorter" style="width: 30%;">
	<thead>
		<tr>
			<th style="width: 10%;"></th>
			<th><spring:message code="emission.name.label" /></th>
		</tr>
	</thead>
	<tbody>
		
				<c:forEach items="${intervenant.emissions}" var="emIter" varStatus="emStatus">
					<tr id="em${emStatus.index}">
						<td><button class="edit" value="${emIter.id}">${default.button.edit.label}</button>
						<td>
							<input type="hidden" name="emissions[${emStatus.index}].id"  value="${emIter.id}" />
							${emIter.name}
						</td>
					</tr>	
				</c:forEach>
	</tbody>
</table>
<script type="text/javascript">
	$(document).ready(function(){
		loadUrlInTable ("<c:url value='/api/admin/intervenant/delEm/' />", "#emissionTable", '#loadEm');
	});
</script>

