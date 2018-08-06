package Rest.cultivos;

import Rest.cultivos.modelos.Cultivo;
import java.sql.SQLException;
import java.util.ArrayList;

public class CultivoServicio {

  private final CultivoDAO DB;

  public CultivoServicio() {
    DB = new CultivoDAO();
  }

  public ArrayList<Cultivo> getListaCultivos() throws ClassNotFoundException, SQLException {
    ArrayList<Cultivo> cultivos = DB.getlistaCultivos();

    return cultivos;
  }

}
