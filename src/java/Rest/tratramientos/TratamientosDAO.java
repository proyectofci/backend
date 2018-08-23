package Rest.tratramientos;

import GENERAL.ConexionMysql;
import Rest.tratramientos.modelos.Tratamiento;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TratamientosDAO {

  private final String sTratamientosByIdAfeccion = "select tra.traId,\n"
          + "  tra.traNombreProducto\n"
          + "  from tratamiento tra, causas_afecciones_tratamiento cat\n"
          + "where cat.cauAfeId = ?\n"
          + "and cat.traId = tra.traId";

  private final String sTratamientoById = "SELECT\n"
          + "  DCA.cauAfeId,\n"
          + "  DCA.cauAfeNombreComun,\n"
          + "  DCA.cauAfeNombreCientifico,\n"
          + "  TRA.traId,\n"
          + "  TRA.traNombreProducto,\n"
          + "  TRA.traAccionFitosanitaria,\n"
          + "  CAT.afeTraDosisCantidad,\n"
          + "  CAT.afeTraDosisAplicacion,\n"
          + "  CAT.afeModoAplicacion\n"
          + "FROM diagnostico_causas_afecciones DCA\n"
          + "  JOIN causas_afecciones_tratamiento CAT\n"
          + "    ON DCA.cauAfeId = CAT.cauAfeId\n"
          + "  JOIN tratamiento TRA\n"
          + "    ON CAT.traId = TRA.traId\n"
          + "WHERE TRA.traId = ?";

  private final ConexionMysql con;

  public TratamientosDAO() {
    con = new ConexionMysql();
  }

  public ArrayList<Tratamiento> getTratamientosByIdAfeccion(int idAfeccion)
          throws ClassNotFoundException, SQLException {
    ArrayList<Tratamiento> lista = new ArrayList<>();

    con.conectar();
    PreparedStatement ps = con.prepareStatement(sTratamientosByIdAfeccion);
    ps.setInt(1, idAfeccion);

    ResultSet rs = ps.executeQuery();
    while (rs.next()) {
      lista.add(new Tratamiento(
              rs.getInt("traId"),
              rs.getString("traNombreProducto")
      ));
    }
    rs.close();
    con.cerrar();
    return lista;
  }

  public Tratamiento getTratamientosById(int idTratamiento)
          throws ClassNotFoundException, SQLException {
    Tratamiento t = null;

    con.conectar();
    PreparedStatement ps = con.prepareStatement(sTratamientoById);
    ps.setInt(1, idTratamiento);

    ResultSet rs = ps.executeQuery();
    if (rs.next()) {
      t = new Tratamiento(
              rs.getInt("traId"),
              rs.getString("traNombreProducto"),
              rs.getString("traAccionFitosanitaria"),
              rs.getString("afeTraDosisCantidad"),
              rs.getString("afeTraDosisAplicacion"),
              rs.getString("afeModoAplicacion")
      );
    }
    rs.close();
    con.cerrar();
    return t;
  }

}

//
//rs.getString("traAccionFitosanitaria"),
//              rs.getString("afeTraDosisCantidad"),
//              rs.getString("afeTraDosisAplicacion"),
//              rs.getString("afeModoAplicacion")
