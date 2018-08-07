package GENERAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ConexionMysql {

  // DESARROLLO
//    private final String server = "165.227.255.217";
//    private final String dbname = "agroug";
//    private final String port = "3306";
//    private final String user = "user";
//    private final String passw = "ReactNative@1984";
  
//    PRODUCCION
  private final String server = "localhost";
  private final String dbname = "agroug";
  private final String port = "3306";
  private final String user = "user";
  private final String passw = "ReactNative@1984";

  private Connection con;

  public ConexionMysql() {
    con = null;
  }

  public void conectar() throws ClassNotFoundException, SQLException {
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://" + server + ":" + port + "/" + dbname;
    con = DriverManager.getConnection(url, user, passw);
  }

  public void cerrar() throws SQLException {
    if (con != null) {
      con.close();
    }
  }

  public PreparedStatement prepareStatement(String sql) throws SQLException {
    return con.prepareStatement(sql);
  }

  public void autoCommit(boolean commit) throws SQLException {
    if (con != null) {
      con.setAutoCommit(commit);
    }
  }

  public void Commit() throws SQLException {
    if (con != null) {
      con.commit();
    }
  }

  public void Rollback() throws SQLException {
    if (con != null) {
      con.rollback();
    }
  }

}
