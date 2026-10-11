<%-- 
    Document   : inscriptionForm
    Created on : Jan 29, 2024, 12:29:10 PM
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
        <title>Inscription</title>
    </head>
    <body>
        <h1>Créer un compte</h1>
        <span style="color: green">${msgOK}</span>
        <form action="/inscrire" method="POST">
            <input type="hidden" name="action" value="inscrire" />
            <table border="0">
                <tbody>
                    <tr>
                        <td>Nom:</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Téléphone:</td>
                        <td><input type="text" name="phone" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Mot de passe:</td>
                        <td><input type="text" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="S'inscrire" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
