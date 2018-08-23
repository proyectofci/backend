package Rest.cultivos.recurso;

import GENERAL.ValidateAgentUser;
import Rest.cultivos.CultivoServicio;
import Rest.cultivos.modelos.Cultivo;
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

@Path("/cultivos")
@Produces(MediaType.APPLICATION_JSON)
public class CultivoRecurso {

  CultivoServicio servicio = new CultivoServicio();

  @GET
  public Response getCultivos() {
    try {
      ArrayList<Cultivo> cultivos = servicio.getListaCultivos("W");
      GenericEntity<ArrayList<Cultivo>> entity = new GenericEntity<ArrayList<Cultivo>>(cultivos) {
      };

      return Response.status(Response.Status.OK)
              .entity(entity)
              .build();

    } catch (ClassNotFoundException | SQLException ex) {
      throw new RuntimeException(ex.getMessage());
    }
  }
  
  @GET
  @Path("/phone")
  public Response getPhoneCultivos() {
    try {
      ArrayList<Cultivo> cultivos = servicio.getListaCultivos("M");
      GenericEntity<ArrayList<Cultivo>> entity = new GenericEntity<ArrayList<Cultivo>>(cultivos) {
      };

      return Response.status(Response.Status.OK)
              .entity(entity)
              .build();

    } catch (ClassNotFoundException | SQLException ex) {
      throw new RuntimeException(ex.getMessage());
    }
  }

  @GET
  @Path("/all")
  public Response getAllCultivos() {
    try {

      ArrayList<Cultivo> cultivos = servicio.getAllCultivos();
      GenericEntity<ArrayList<Cultivo>> entity = new GenericEntity<ArrayList<Cultivo>>(cultivos) {
      };

      return Response.status(Response.Status.OK)
              .entity(entity)
              .build();

    } catch (ClassNotFoundException | SQLException ex) {
      throw new RuntimeException(ex.getMessage());
    }
  }

  @GET
  @Path("{id}")
  public Response getCultivo(@HeaderParam("user-agent") String userAgent,
          @PathParam("id") int id) {
    try {

      System.out.println("realizando petición");
      Cultivo cultivo = servicio.getCultivoById(id);
      GenericEntity<Cultivo> entity = new GenericEntity<Cultivo>(cultivo) {
      };
      return Response.status(Response.Status.OK)
              .entity(entity)
              .build();

    } catch (ClassNotFoundException | SQLException ex) {
      throw new RuntimeException(ex.getMessage());
    }
  }

}
