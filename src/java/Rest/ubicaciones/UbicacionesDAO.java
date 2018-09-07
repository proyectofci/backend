package Rest.ubicaciones;

import GENERAL.ConexionMysql;
import Rest.ubicaciones.modelos.Ubicacion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UbicacionesDAO {

  private final String sUbicaciones = "select\n"
          + "  uc.ubiCulId,\n"
          + "  uc.ubiId,\n"
          + "  uc.culId,\n"
          + "  u.ubiNombre,\n"
          + "  u.ubiLatitud,\n"
          + "  u.ubiLongitud\n"
          + "from ubicacion_cultivo uc, ubicaciones u\n"
          + "where uc.ubiId = u.ubiId";

  private final String sUbicacionesByIdCultivo = "select\n"
          + "  uc.ubiCulId,\n"
          + "  uc.ubiId,\n"
          + "  uc.culId,\n"
          + "  u.ubiNombre,\n"
          + "  u.ubiLatitud,\n"
          + "  u.ubiLongitud\n"
          + "from ubicacion_cultivo uc, ubicaciones u\n"
          + "where uc.ubiId = u.ubiId\n"
          + "and uc.culId = ? ";

  private final ConexionMysql con;

  public UbicacionesDAO() {
    con = new ConexionMysql();
  }

  public ArrayList getUbicacionesByIdCultivo(int idCultivo)
          throws ClassNotFoundException, SQLException {
    ArrayList<Ubicacion> lista = new ArrayList<>();

    con.conectar();
    PreparedStatement ps = con.prepareStatement(sUbicacionesByIdCultivo);
    ps.setInt(1, idCultivo);
    ResultSet rs = ps.executeQuery();

    while (rs.next()) {
      lista.add(
              new Ubicacion(
                      rs.getInt("ubiId"),
                      rs.getString("ubiNombre"),
                      rs.getDouble("ubiLatitud"),
                      rs.getDouble("ubiLongitud")
              )
      );
    }
    rs.close();
    con.cerrar();

    return lista;
  }

  public ArrayList getUbicaciones()
          throws ClassNotFoundException, SQLException {
    ArrayList<Ubicacion> lista = new ArrayList<>();

    con.conectar();
    PreparedStatement ps = con.prepareStatement(sUbicaciones);
    ResultSet rs = ps.executeQuery();

    while (rs.next()) {
      lista.add(
              new Ubicacion(
                      rs.getInt("ubiId"),
                      rs.getInt("culId"),
                      rs.getString("ubiNombre"),
                      rs.getDouble("ubiLatitud"),
                      rs.getDouble("ubiLongitud")
              )
      );
    }
    rs.close();
    con.cerrar();

    return lista;
  }

}
