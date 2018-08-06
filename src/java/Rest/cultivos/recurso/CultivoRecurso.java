package Rest.cultivos.recurso;

import Rest.cultivos.CultivoServicio;
import Rest.cultivos.modelos.Cultivo;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/cultivos")
@Produces(MediaType.APPLICATION_JSON)
public class CultivoRecurso {

  CultivoServicio servicio = new CultivoServicio();

  @GET
  public ArrayList<Cultivo> getCultivos() throws ClassNotFoundException, SQLException {
    return servicio.getListaCultivos();
  }

//  @POST
//  public void insertCultivo(Cultivo c) {
//    return servicio.insertCultivo();
//  }

}
