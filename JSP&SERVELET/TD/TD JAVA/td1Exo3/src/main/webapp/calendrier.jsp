
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDate" %>
<%@page import="java.time.DayOfWeek" %>

<%!
    int mois;
    int annee;
    
    public void jspInit(){
        mois = Integer.parseInt(getServletConfig().getInitParameter("mois"));
        annee = Integer.parseInt(getServletConfig().getInitParameter("annee"));
    }
 
    int[] genererTabCalendrier(int debut, int fin){
        int[] tab = new int[42];
        int k = 1;
        for(int i=debut; i<fin+debut; i++){
            tab[i] = k++;
        }
        return tab;
    }

    String calendrierHTML(int[] tab){
        String[] nomMois = {"Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", "Aout", "Septembre", "Octobre", "Novembre", "Décembre"};
        String tabStr = "<table border='1'>";
        tabStr += "<tr><td colspan='7'>"+nomMois[mois-1]+" " +annee+"</td></tr>";
        tabStr += "<tr><td>lu</td><td>ma</td><td>me</td><td>je</td><td>ve</td><td>sa</td><td>di</td></tr>";
        int k=-1;
        for(int i=0; i<=5;i++){
            tabStr+= "<tr>";
            for(int j=0; j<=6;j++){
                k++;
                if(tab[k] == 0){
                    tabStr += "<td>&nbsp;</td>";
                }
                else{
                    if(j==5 || j==6){
                        tabStr += "<td bgcolor='gray'>"+tab[k]+"</td>";
                    }else{
                        tabStr += "<td>"+tab[k]+"</td>";
                    }
                }
            }
            tabStr += "</tr>";
        }
        tabStr += "</table>";
        return tabStr;
    }
%>

<%
    // Obtenir le 1er jour du mois
    LocalDate localDate = LocalDate.of(annee, mois, 1);
    DayOfWeek nom1erJourMois = localDate.getDayOfWeek();
    int numero1erJourMois = nom1erJourMois.getValue();

    //Obtenir le nombre de jours du mois
    int nbrJourMois = localDate.lengthOfMonth();
    
    int[] tab = genererTabCalendrier(numero1erJourMois-1, nbrJourMois);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendrier</title>
    </head>
    <body>
        <%= calendrierHTML(tab) %>
    </body>
</html>
