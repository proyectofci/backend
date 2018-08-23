package Rest.cultivos;

import Rest.cultivos.modelos.Cultivo;
import java.sql.SQLException;
import java.util.ArrayList;

public class CultivoServicio {

  private final CultivoDAO DB;

  public CultivoServicio() {
    DB = new CultivoDAO();
  }

  public ArrayList<Cultivo> getListaCultivos(String tipoOs)
          throws ClassNotFoundException, SQLException {
    return DB.getlistaCultivos(tipoOs);
  }

  public ArrayList<Cultivo> getAllCultivos() throws ClassNotFoundException, SQLException {
    ArrayList<Cultivo> cultivos = DB.getAllCultivos();
    return cultivos;
  }

  public Cultivo getCultivoById(int id) throws ClassNotFoundException, SQLException {
    Cultivo cultivo = DB.getCultivoById(id);
    return cultivo;
  }

}
