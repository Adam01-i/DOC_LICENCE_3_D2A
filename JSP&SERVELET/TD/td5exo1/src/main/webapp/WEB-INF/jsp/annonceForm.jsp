<%-- 
    Document   : annonceForm
    Created on : Jan 29, 2024, 10:12:32 AM
    Author     : k
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Titre</title>
    </head>
    <body>
        <h1>Publier une annonce</h1>
        <span style="color: green">${msgOK}</span>
        <form action="Controleur" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="action" value="publier" />
            <input type="hidden" name="vendeurId" value="1" />
            <table border="0">
                <tbody>
                    <tr>
                        <td>Marque:</td>
                        <td><input type="text" name="marque" value="" /></td>
                    </tr>
                    <tr>
                        <td>Modèle:</td>
                        <td><input type="text" name="modele" value="" /></td>
                    </tr>
                    <tr>
                        <td>Photo:</td>
                        <td><input type="file" name="photo" /></td>
                    </tr>
                    <tr>
                        <td>Prix:</td>
                        <td><input type="number" name="prix" value="" /></td>
                    </tr>
                    <tr>
                        <td>Disponible:</td>
                        <td>
                            <select name="vendue">
                                <option value="0">Disponible</option>
                                <option value="1">Vendue</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Publier" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
