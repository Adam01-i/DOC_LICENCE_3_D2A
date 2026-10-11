<%-- 
    Document   : choisirPositions
    Created on : Dec 3, 2024, 9:39:57 AM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Choisir les positions</title>
    </head>
    <body>
        <h1>Choisir la position des images</h1>
        <form action="Controleur" method="GET">
            <input type="hidden" name="action" value="EnregistrerPositions" />
            <table border="0">
                <tbody>
                    <tr>
                        <td align="center">1<br/><img src="imgs/img1.jpg"/></td>
                        <td align="center">2<br/><img src="imgs/img2.jpg"/></td>
                        <td align="center">3<br/><img src="imgs/img3.jpg"/></td>
                    </tr>
                    <tr>
                        <td align="center">4<br/><img src="imgs/img4.jpg"/></td>
                        <td align="center">5<br/><img src="imgs/img5.jpg"/></td>
                        <td align="center">6<br/><img src="imgs/img6.jpg"/></td>
                    </tr>
                    <tr>
                        <td align="center">7<br/><img src="imgs/img7.jpg"/></td>
                        <td align="center">8<br/><img src="imgs/img8.jpg"/></td>
                        <td align="center">9<br/><img src="imgs/img9.jpg"/></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">Nouvelles positions<br/><input type="text" name="positions" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><input type="submit" value="Enregistrer" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
