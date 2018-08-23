package Rest.exception.mapper;

import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;
import javax.ws.rs.ext.Provider;
import Rest.exception.Error;
import javax.ws.rs.core.GenericEntity;

@Provider
public class GenericExceptionMapper implements ExceptionMapper<Throwable> {

  @Override
  public Response toResponse(Throwable ex) {
    Response.StatusType type = getStatusType(ex);

    Error error = new Error(
            type.getStatusCode(),
            type.getReasonPhrase(),
            ex.getLocalizedMessage());

    GenericEntity<Error> entity = new GenericEntity<Error>(error) {
    };

    return Response.status(error.getStatusCode())
            .entity(entity)
            .type(MediaType.APPLICATION_JSON)
            .build();
  }

  private Response.StatusType getStatusType(Throwable ex) {
    if (ex instanceof WebApplicationException) {
      return ((WebApplicationException) ex).getResponse().getStatusInfo();
    } else {
      return Response.Status.INTERNAL_SERVER_ERROR;
    }
  }
}
