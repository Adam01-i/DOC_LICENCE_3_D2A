<%-- 
    Document   : categorieForm
    Created on : Dec 13, 2024, 9:29:38 AM
    Author     : k
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Catégorie</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${param.err eq '0'}">
                <script>alert("Catégorie enregistrée avec succès.")</script>
            </c:when>
            <c:when test="${param.err eq '1'}">
                <script>alert("ERREUR!")</script>
            </c:when>
        </c:choose>
        
        <%@include file="WEB-INF/jspf/entete.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <h2>Ajouter une catégorie</h2>
        
        <form action="Controleur" method="POST">
            <input type="hidden" name="action" value="enregistrerCategorie" />
            Libellé: <input type="text" name="libelle" value="" /><br/>
            <input type="submit" value="Ajouter" />
        </form>
    </body>
</html>
