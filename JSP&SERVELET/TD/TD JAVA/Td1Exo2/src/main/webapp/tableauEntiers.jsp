<%-- 
    Document   : tableauEntiers
    Created on : 21 oct. 2024, 11:28:35
    Author     : khoureich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random" %>

<%! 
    int[] tab = new int[25];
    Random rd = new Random();
    
    String genererTab(){
        String tabStr = "<table border='1'>";
        tabStr+= "<tr>";
        for(int i=0; i<25;i++){
            tabStr += "<td>"+tab[i]+"</td>";
        }
        tabStr += "</tr>";
        tabStr += "</table>";
        
        return tabStr;
    }
    
    String colorerNombresPaires(){
        String tabStr = "<table border='1'>";
        tabStr+= "<tr>";
        for(int i=0; i<25;i++){
            if(tab[i]%2==0){
                tabStr += "<td '>"+tab[i]+"</td>";
            }else{
                tabStr += "<td>"+tab[i]+"</td>";
            }
        }
        tabStr += "</tr>";
        tabStr += "</table>";
        
        return tabStr;
    }
    
    String tableauMatrice(){
        String tabStr = "<table border='1'>";
        
        int k=-1;
        for(int i=0; i<=4;i++){
            tabStr+= "<tr>";
            
            for(int j=0; j<=4;j++){
                k++;
                if(tab[k]%2==0){
                    tabStr += "<td bgcolor='yellow'>"+tab[k]+"</td>";
                }else{
                    tabStr += "<td>"+tab[k]+"</td>";
                }
            }
            tabStr += "</tr>";
        }
        
        tabStr += "</table>";
        return tabStr;
    }
%>

<%
    for(int i=0; i<25;i++){
        tab[i] = rd.nextInt(100);
    } 
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tableau d'entiers</title>
    </head>
    <body>
        <h1>Tableau d'entiers</h1>
        <%= genererTab() %>
        
        <H1>Tableau d'entiers coloré</H1>
        <%= colorerNombresPaires() %>
        
        <h1>Tableau matrice</h1>
        <%= tableauMatrice() %>
    </body>
</html>
