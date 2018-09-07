package Rest.ubicaciones;

import java.sql.SQLException;
import java.util.ArrayList;

public class UbicacionesServicios {

  private final UbicacionesDAO DB;

  public UbicacionesServicios() {
    DB = new UbicacionesDAO();
  }

  public ArrayList getUbicacionesByIdCultivo(int idCultivo)
          throws ClassNotFoundException, SQLException {
    return DB.getUbicacionesByIdCultivo(idCultivo);
  }

  public ArrayList getUbicaciones()
          throws ClassNotFoundException, SQLException {
    return DB.getUbicaciones();
  }

}
