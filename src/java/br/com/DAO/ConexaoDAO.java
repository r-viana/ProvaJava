
package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ramon
 */
public class ConexaoDAO{
    public Connection conexaoBD() throws ClassNotFoundException{
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/biblioteca?user=root&password=";
            con = DriverManager.getConnection(url);
            
        } catch (SQLException e) {
           
        } return con;
    }
    
}
