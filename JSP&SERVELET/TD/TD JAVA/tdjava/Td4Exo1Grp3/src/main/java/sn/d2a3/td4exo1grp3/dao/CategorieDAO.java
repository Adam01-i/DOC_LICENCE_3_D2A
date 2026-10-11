
package sn.d2a3.td4exo1grp3.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import sn.d2a3.td4exo1grp3.domain.Categorie;
import sn.d2a3.td4exo1grp3.util.DaoUtil;

public class CategorieDAO {
    public int enregistrer(Categorie c){
        String sql = "INSERT INTO categorie (libelle) VALUES (?)";
        
        try(Connection conn = DaoUtil.getDataSource().getConnection();
                PreparedStatement ps = conn.prepareStatement(sql);){
            
            ps.setString(1, c.getLibelle());
            ps.executeUpdate();blic
            return 0;
            
        } catch (SQLException ex) {
            Logger.getLogger(CategorieDAO.class.getName()).log(Level.SEVERE, null, ex);
            return 1;
        }
    }
}
