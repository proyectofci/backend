package Rest.ubicaciones.recursos;

import Rest.ubicaciones.UbicacionesServicios;
import Rest.ubicaciones.modelos.Ubicacion;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/ubicaciones")
@Produces(MediaType.APPLICATION_JSON)
public class UbicacionesRecursos {

  UbicacionesServicios servicio = new UbicacionesServicios();

  @GET
  public Response getUbicaciones() {
    try {
      ArrayList<Ubicacion> ubicaciones = servicio.getUbicaciones();
      GenericEntity<ArrayList<Ubicacion>> entity
              = new GenericEntity<ArrayList<Ubicacion>>(ubicaciones) {
      };

      return Response.status(Response.Status.OK)
              .entity(entity)
              .build();

    } catch (ClassNotFoundException | SQLException ex) {
      throw new RuntimeException(ex.getMessage());
    }
  }

  @GET
  @Path("/{id}")
  public Response getUbicacionesByIdCultivo(@PathParam("id") int idCultivo) {
    try {
      ArrayList<Ubicacion> ubicaciones = servicio.getUbicacionesByIdCultivo(idCultivo);
      GenericEntity<ArrayList<Ubicacion>> entity
              = new GenericEntity<ArrayList<Ubicacion>>(ubicaciones) {
      };

      return Response.status(Response.Status.OK)
              .entity(entity)
              .build();

    } catch (ClassNotFoundException | SQLException ex) {
      throw new RuntimeException(ex.getMessage());
    }
  }

}
