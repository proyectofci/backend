package Rest.afecciones;

import Rest.afecciones.modelos.Afeccion;
import Rest.afecciones.modelos.TipoAfecciones;
import java.sql.SQLException;
import java.util.ArrayList;

public class AfeccionesServicio {

  private final AfeccionesDAO DB;

  public AfeccionesServicio() {
    DB = new AfeccionesDAO();
  }

  public ArrayList<TipoAfecciones> getListaTipos()
          throws ClassNotFoundException, SQLException {
    ArrayList<TipoAfecciones> tipoAfecciones = DB.getTiposAfecciones();
    return tipoAfecciones;
  }

  public Afeccion getAfeccionById(int id) throws ClassNotFoundException, SQLException {
    return DB.getAfeccionById(id);
  }

  public ArrayList<Afeccion> getAfeccionesByIdTipoAfeccionIdCultivo(
          int idTipoAfeccion, int idCultivo)
          throws ClassNotFoundException, SQLException {
    ArrayList<Afeccion> afecciones
            = DB.getAfeccionesByIdTipoAfeccionIdCultivo(idTipoAfeccion, idCultivo);
    return afecciones;
  }

}
