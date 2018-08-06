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
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/cultivos")
@Produces(MediaType.APPLICATION_JSON)
public class CultivoRecurso {

  CultivoServicio servicio = new CultivoServicio();

  @GET
  public Response getCultivos() throws ClassNotFoundException, SQLException {
    ArrayList<Cultivo> cultivos = servicio.getListaCultivos();

    GenericEntity<ArrayList<Cultivo>> entity = new GenericEntity<ArrayList<Cultivo>>(cultivos) {
    };

    return Response.status(Response.Status.OK)
            .entity(entity)
            .build();
  }
}
