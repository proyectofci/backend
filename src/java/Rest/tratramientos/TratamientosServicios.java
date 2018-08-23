package Rest.tratramientos;

import Rest.tratramientos.modelos.Tratamiento;
import java.sql.SQLException;
import java.util.ArrayList;

public class TratamientosServicios {

  private final TratamientosDAO DB;

  public TratamientosServicios() {
    DB = new TratamientosDAO();
  }

  public ArrayList<Tratamiento> getTratamientosByIdAfeccion(int idAfeccion)
          throws ClassNotFoundException, SQLException {
    return DB.getTratamientosByIdAfeccion(idAfeccion);
  }

  public Tratamiento getTratamientosById(int idTratamiento)
          throws ClassNotFoundException, SQLException {
    return DB.getTratamientosById(idTratamiento);
  }

}
