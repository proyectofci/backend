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

  private final String sAfeccionCultivo = "SELECT\n"
          + "		CUL.culId,\n"
          + "		CUL.culNombre,\n"
          + "        DCA.cauAfeId,\n"
          + "        DCA.cauAfeNombreComun,\n"
          + "		DCA.cauAfeNombreCientifico,\n"
          + "    DCA.cauAfeDescripcion,\n"
          + "		DCA.cauAfeRutaImagen,\n"
          + "		TIP.tipAfeNombre\n"
          + "	FROM cultivos CUL\n"
          + "	JOIN ponderaciones PON\n"
          + "		ON PON.culId = CUL.culId\n"
          + "	JOIN diagnostico DIA\n"
          + "		ON DIA.ponId = PON.ponId\n"
          + "	JOIN diagnostico_causas_afecciones DCA\n"
          + "		ON DCA.diaId = DIA.diaId\n"
          + "	JOIN tipos_afecciones TIP\n"
          + "		ON DCA.tipAfeId = TIP.tipAfeId\n"
          + "	WHERE\n"
          + "		CUL.culId = ? AND\n"
          + "		TIP.tipAfeId = ?";

  public ArrayList getTiposAfecciones() 
          throws ClassNotFoundException, SQLException {
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
    PreparedStatement ps = con.prepareStatement(sAfeccionCultivo);
    ps.setInt(1, idCultivo);
    ps.setInt(2, idTipoAfeccion);
    ResultSet rs = ps.executeQuery();
    while (rs.next()) {
      lista.add(
              new Afeccion(
                      rs.getInt("cauAfeId"),
                      rs.getString("cauAfeNombreComun"),
                      rs.getString("cauAfeNombreCientifico"),
                      rs.getString("cauAfeDescripcion"),
                      rs.getString("cauAfeRutaImagen")
              )
      );
    }

    rs.close();
    con.cerrar();
    return lista;
  }

}
