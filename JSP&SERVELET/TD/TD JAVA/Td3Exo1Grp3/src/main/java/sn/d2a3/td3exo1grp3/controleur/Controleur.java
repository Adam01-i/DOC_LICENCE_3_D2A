package sn.d2a3.td3exo1grp3.controleur;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "Controleur", urlPatterns = {"/Controleur"})
public class Controleur extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        action = action == null ? "" : action;
        
        String afficherTexte ="oui";
        
        Cookie[] cookies = request.getCookies();
        if(cookies != null){
            for(Cookie c : cookies){
                if(c.getName().equals("1erAcces")){
                    afficherTexte = "non";
                    break;
                }
            }
        }
        
        if("oui".equals(afficherTexte)){
            Cookie c1 = new Cookie("1erAcces", "");
            c1.setMaxAge(24*3600);
            response.addCookie(c1);
        }
        
        switch(action){
            case "":
                request.getRequestDispatcher("tableauImages.jsp?afficherTexte="+afficherTexte).forward(request, response);
                break;
            case "choisirPositions":
                request.getRequestDispatcher("choisirPositions.jsp").forward(request, response);
                break;
            case "EnregistrerPositions":
                String positions = request.getParameter("positions");
                Cookie c2 = new Cookie("positions", positions);
                c2.setMaxAge(365*24*3600);
                response.addCookie(c2);
                response.sendRedirect("tableauImages.jsp?afficherTexte="+afficherTexte);
                break;
            case "positionsParDefaut":
                Cookie c3 = new Cookie("positions", "");
                c3.setMaxAge(0);
                response.addCookie(c3);
                response.sendRedirect("tableauImages.jsp?afficherTexte="+afficherTexte);
                break;
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
