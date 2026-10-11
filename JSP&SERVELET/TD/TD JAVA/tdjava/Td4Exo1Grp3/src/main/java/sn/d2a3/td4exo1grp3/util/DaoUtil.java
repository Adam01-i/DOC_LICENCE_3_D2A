package sn.d2a3.td4exo1grp3.util;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DaoUtil {

    private static DataSource dataSource;
    private static final String JNDI_PATH = "java:comp/env/jdbc/td4exo1";

    static {
        try {
            Context context = new InitialContext();
            dataSource = (DataSource) context.lookup(JNDI_PATH);
        } catch (NamingException ex) {
            Logger.getLogger(DaoUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static DataSource getDataSource() {
        return dataSource;
    }
}
