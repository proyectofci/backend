package Rest.afecciones;

import GENERAL.ConexionMysql;
import Rest.afecciones.modelos.Afeccion;
import Rest.afecciones.modelos.TipoAfecciones;
import Rest.cultivos.modelos.Cultivo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AfeccionesDAO {

  private final ConexionMysql con;

  public AfeccionesDAO() {
    con = new ConexionMysql();
  }

  private final String sTiposAfecciones = "select\n"
          + "  tipAfeId,\n"
          + "  tipAfeNombre\n"
          + "from tipos_afecciones\n"
          + "where tipAfeEstado = 1";

  public ArrayList getTiposAfecciones() throws ClassNotFoundException, SQLException {
    ArrayList<TipoAfecciones> lista = new ArrayList<>();
    con.conectar();
    PreparedStatement ps = con.prepareStatement(sTiposAfecciones);
    ResultSet rs = ps.executeQuery();
    while (rs.next()) {
      lista.add(
              new TipoAfecciones(
                      rs.getInt("tipAfeId"),
                      rs.getString("tipAfeNombre")
              )
      );
    }

    rs.close();
    con.cerrar();
    return lista;
  }

  public ArrayList getAfeccionesByIdTipoAfeccionIdCultivo(int idTipoAfeccion, int idCultivo)
          throws ClassNotFoundException, SQLException {
    ArrayList<Afeccion> lista = new ArrayList<>();
    con.conectar();
    PreparedStatement ps = con.prepareStatement("call SP_SELECCIONAR_AFECCION_CULTIVO(?, ?)");
    ps.setInt(1, idTipoAfeccion);
    ps.setInt(2, idCultivo);
    ResultSet rs = ps.executeQuery();
    while (rs.next()) {
      lista.add(
              new Afeccion(
                      rs.getInt("cauAfeId"),
                      rs.getString("cauAfeNombreComun"),
                      rs.getString("cauAfeNombreCientifico"),
                      rs.getString("cauAfeRutaImagen")
              )
      );
    }

    rs.close();
    con.cerrar();
    return lista;
  }

}
