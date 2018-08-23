package Rest.tratramientos.recursos;

import Rest.tratramientos.TratamientosServicios;
import Rest.tratramientos.modelos.Tratamiento;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/tratamientos")
@Produces(MediaType.APPLICATION_JSON)
public class TratamientoRecurso {

  TratamientosServicios servicio = new TratamientosServicios();

  @GET
  @Path("{id}")
  public Response getTratamientosById(@PathParam("id") int idTratamiento) {

    try {
      Tratamiento tratamiento = servicio.getTratamientosById(idTratamiento);
      GenericEntity<Tratamiento> entity
              = new GenericEntity<Tratamiento>(tratamiento) {
      };

      return Response.status(Response.Status.OK)
              .entity(entity)
              .build();

    } catch (ClassNotFoundException | SQLException ex) {
      throw new RuntimeException(ex.getMessage());
    }
  }

  @GET
  @Path("/afeccion/{id}")
  public Response getTratamientosByIdAfeccion(@PathParam("id") int idAfeccion)
          throws SQLException {
    try {
      ArrayList<Tratamiento> tipos = servicio.getTratamientosByIdAfeccion(idAfeccion);
      GenericEntity<ArrayList<Tratamiento>> entity
              = new GenericEntity<ArrayList<Tratamiento>>(tipos) {
      };
      return Response.status(Response.Status.OK)
              .entity(entity)
              .build();

    } catch (ClassNotFoundException | SQLException ex) {
      throw new RuntimeException(ex.getMessage());
    }
  }

}
