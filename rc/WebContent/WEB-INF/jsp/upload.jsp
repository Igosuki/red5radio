<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="/spring" %>
<%@ taglib prefix="spring-form" uri="/spring-form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<title>Radio Courtoisie - Administration Red 5</title>
	</head>
	<body>
	 <div class="body">
            
            <h1>T&eacute;l&eacute;verser un fichier</h1>
            <div class="list" id="displayList">
        		
                <table>
                    <thead>
                        <tr>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
	                    <td>
	                    	<div id="content">
								<div class="post">
									<p class="meta"><a href="#" class="comments"></a> &nbsp;&nbsp; <a href="#" class="permalink"></a></p>
									<div class="entry">
										<form:form method="POST" commandName="fileUploadForm" enctype="multipart/form-data">
											<form:errors path="*" cssClass="errorblock" element="div"/>
											<p>Sélectionnez un fichier à envoyer</p>
											<input type="file" name="file" size="50" />
											<input type="submit" value="Valider" />
											<form:input path="mi.title" title="Titre" />
											<form:textarea path="mi.description" title="Description" />
										</form:form>
									</div>
								</div>
							</div>
	                    </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
	</body>
</html>
