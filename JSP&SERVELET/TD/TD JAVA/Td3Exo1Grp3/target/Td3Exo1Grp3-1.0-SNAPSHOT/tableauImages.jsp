<%-- 
    Document   : tableauImages
    Created on : Dec 2, 2024, 8:46:45 AM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String afficherTexte = request.getParameter("afficherTexte");

    String positions = "123456789";
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            if (c.getName().equals("positions")) {
                positions = c.getValue();
                break;
            }
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tableau d'images</title>
    </head>
    <body>
        <h1>Un tableau d'images</h1>

        <% if ("oui".equals(afficherTexte)) { %>
        <p>Pour changer la position des images ...</p>
        <% }%>

        <table border="0">
            <tbody>
                <tr>
                    <td><img src="imgs/img<%=positions.charAt(0)%>.jpg"/></td>
                    <td><img src="imgs/img<%=positions.charAt(1)%>.jpg"/></td>
                    <td><img src="imgs/img<%=positions.charAt(2)%>.jpg"/></td>
                </tr>
                <tr>
                    <td><img src="imgs/img<%=positions.charAt(3)%>.jpg"/></td>
                    <td><img src="imgs/img<%=positions.charAt(4)%>.jpg"/></td>
                    <td><img src="imgs/img<%=positions.charAt(5)%>.jpg"/></td>
                </tr>
                <tr>
                    <td><img src="imgs/img<%=positions.charAt(6)%>.jpg"/></td>
                    <td><img src="imgs/img<%=positions.charAt(7)%>.jpg"/></td>
                    <td><img src="imgs/img<%=positions.charAt(8)%>.jpg"/></td>
                </tr>
                <tr>
                    <td colspan="3" align="center"><a href="Controleur?action=choisirPositions">Personnaliser les positions</a></td>
                </tr>
                <tr>
                    <td colspan="3" align="center"><a href="Controleur?action=positionsParDefaut">Rétablir les positions par défaut</a></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
