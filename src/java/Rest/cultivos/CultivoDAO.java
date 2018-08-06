package Rest.cultivos;

import GENERAL.ConexionMysql;
import Rest.cultivos.modelos.Cultivo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CultivoDAO {

  private final ConexionMysql con;

  public CultivoDAO() {
    con = new ConexionMysql();
  }

  private final String sCultivos = "select\n"
          + "  culId,\n"
          + "  culNombre,\n"
          + "  culDescripcion,\n"
          + "  culResenia,\n"
          + "  culRutaImagenMin,\n"
          + "  culRutaImagenMax\n"
          + "from cultivos\n"
          + "where culEstado = 1 ";

  private final String sMaxIdCultivo = "select max(culId) as maximo from cultivos";

  private final String iCultivo = "insert into cultivos\n"
          + "(culId, culNombre, culDescripcion, culResenia, culRutaImagenMax, culRutaImagenMin, culEstado)\n"
          + "values\n"
          + "  (?, ?, ?, ?, ?, ?, ?)";

  public ArrayList<Cultivo> getlistaCultivos()
          throws ClassNotFoundException, SQLException {
    ArrayList<Cultivo> lista = new ArrayList<>();

    con.conectar();
    PreparedStatement ps = con.prepareStatement(sCultivos);
    ResultSet rs = ps.executeQuery();

    while (rs.next()) {
      lista.add(
              new Cultivo(
                      rs.getInt("culId"),
                      rs.getString("culNombre"),
                      rs.getString("culDescripcion"),
                      rs.getString("culResenia"),
                      (rs.getString("culRutaImagenMin") == null ? "" : rs.getString("culRutaImagenMin")),
                      rs.getString("culRutaImagenMax")
              )
      );
    }

    rs.close();
    con.cerrar();
    return lista;

  }
//
//  public int insertCultivo(Cultivo c) throws ClassNotFoundException, SQLException {
//    con.conectar();
//    con.autoCommit(false);
//
//    try {
//      int maxId;
//      PreparedStatement ps = con.prepareStatement(sMaxIdCultivo);
//      ResultSet rs = ps.executeQuery();
//      rs.next();
//      maxId = rs.getInt("maximo");
//
//      ps = con.prepareStatement(iCultivo);
//      int resultado = ps.executeUpdate();
//      ps.setInt(1, maxId);
//      ps.setString(2, c.getNombre());
//      ps.setString(3, c.getResena());
//      ps.setString(4, c.getRutaImagenMax());
//      ps.setString(5, c.getRutaImagenMin());
//      ps.setInt(6, c.c);
//
//      con.Commit();
//      con.cerrar();
//    } catch (Exception e) {
//
//      con.Rollback();
//      con.cerrar();
//    }
//
//  }

}
