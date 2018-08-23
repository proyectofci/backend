package Rest.afecciones.recursos;

import Rest.afecciones.AfeccionesServicio;
import Rest.afecciones.modelos.Afeccion;
import Rest.afecciones.modelos.TipoAfecciones;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.ws.rs.GET;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.GenericEntity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/afecciones")
@Produces(MediaType.APPLICATION_JSON)
public class AfeccionesRecurso {

  AfeccionesServicio servicio = new AfeccionesServicio();

  @GET
  @Path("{id}")
  public Response getAfeccion(@PathParam("id") int id) {

    try {
      ArrayList<TipoAfecciones> tipos = servicio.getListaTipos();
      GenericEntity<ArrayList<TipoAfecciones>> entity
              = new GenericEntity<ArrayList<TipoAfecciones>>(tipos) {
      };

      return Response.status(Response.Status.OK)
              .entity(entity)
              .build();

    } catch (ClassNotFoundException | SQLException ex) {
      throw new RuntimeException(ex.getMessage());
    }
  }

  @GET
  @Path("/tipos")
  public Response getTipos() {

    try {
      ArrayList<TipoAfecciones> tipos = servicio.getListaTipos();
      GenericEntity<ArrayList<TipoAfecciones>> entity
              = new GenericEntity<ArrayList<TipoAfecciones>>(tipos) {
      };

      return Response.status(Response.Status.OK)
              .entity(entity)
              .build();

    } catch (ClassNotFoundException | SQLException ex) {
      throw new RuntimeException(ex.getMessage());
    }
  }

  @GET
  @Path("/tipos/{idTipo}/cultivos/{idCultivo}")
  public Response getAfeccionesByIdTipoAfeccionIdCultivo(
          @PathParam("idTipo") int idTipo,
          @PathParam("idCultivo") int idCultivo) {

    try {
      ArrayList<Afeccion> afecciones
              = servicio.getAfeccionesByIdTipoAfeccionIdCultivo(idTipo, idCultivo);
      GenericEntity<ArrayList<Afeccion>> entity
              = new GenericEntity<ArrayList<Afeccion>>(afecciones) {
      };

      return Response.status(Response.Status.OK)
              .entity(entity)
              .build();

    } catch (ClassNotFoundException | SQLException ex) {
      throw new RuntimeException(ex.getMessage());
    }
  }

}
