<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<title>Red5 Admin</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		
	</head>
	<body>
	 <div class="body">
            <h1>Radio Courtoisie - Administration Red 5</h1>
            <div class="list" id="displayList">
        		
                <%-- <table>
                    <thead>
                        <tr>
                             <th class="sortable"><a href="list?sort=file&order=asc">File</a></th>
                             <th class="sortable"><a href="list?sort=code&order=asc">Name</a></th>
                             <th class="sortable"><a href="list?sort=file&order=asc">Last Modified</a></th>
                             <th class="sortable"><a href="list?sort=size&order=asc">Size</a></th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="fileEntry" items="${fileList}" varStatus="status">
							<tr class="${(status.index % 2) == 0 ? 'odd' : 'even'}">
								<td>${fileEntry.key}</td>
								<td>${fileEntry.value['name']}</td>
								<td>${fileEntry.value['lastModified']}</td>
								<td>${fileEntry.value['size']}</td>
							</tr>
						</c:forEach>
                    </tbody>
                </table> --%>
                <display:table sort="external" partialList="true" name="page" size="${page.fullListSize}" pagesize="${page.objectsPerPage}">
                	<display:column property="" title="Fichier" />
                </display:table>
            </div>
            <div class="paginateButtons">
                <%-- <g:paginate total="${eventInstanceTotal}"/> --%>
            </div>
        </div>
	</body>
</html>
