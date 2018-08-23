package Rest.cultivos;

import GENERAL.ConexionMysql;
import Rest.cultivos.modelos.Cultivo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CultivoDAO {

  private final ConexionMysql con;

  public CultivoDAO() {
    con = new ConexionMysql();
  }

  private String sCultivoById = "SELECT\n"
          + "  culId,\n"
          + "  culNombre,\n"
          + "  culNombreCientifico,\n"
          + "  culResenia,\n"
          + "  culDescripcion,\n"
          + "  culRutaImagenMax as imagen\n"
          + "FROM cultivos\n"
          + "where culId = ?\n"
          + "and culEstado = 1";

  private String sAllCultivos = "SELECT\n"
          + "  culId,\n"
          + "  culNombre,\n"
          + "  culNombreCientifico,\n"
          + "  culResenia,\n"
          + "  culDescripcion,\n"
          + "  culRutaImagenMax as imagen\n"
          + "FROM cultivos\n"
          + "WHERE culEstado = 1";

  public ArrayList<Cultivo> getlistaCultivos(String tipoOs)
          throws ClassNotFoundException, SQLException {
    ArrayList<Cultivo> lista = new ArrayList<>();

    con.conectar();
    PreparedStatement ps = con.prepareStatement("call SP_BUSCAR_CULTIVOS(?)");
    ps.setString(1, tipoOs);
    ResultSet rs = ps.executeQuery();

    while (rs.next()) {
      lista.add(
              new Cultivo(
                      rs.getInt("culId"),
                      rs.getString("culNombre"),
                      rs.getString("culNombreCientifico"),
                      rs.getString("culResenia"),
                      rs.getString("culDescripcion"),
                      (rs.getString("imagen") == null ? "" : rs.getString("imagen"))
              )
      );
    }

    rs.close();
    con.cerrar();
    return lista;
  }

  public ArrayList<Cultivo> getAllCultivos()
          throws ClassNotFoundException, SQLException {
    ArrayList<Cultivo> lista = new ArrayList<>();

    con.conectar();
    PreparedStatement ps = con.prepareStatement(sAllCultivos);
    ResultSet rs = ps.executeQuery();

    while (rs.next()) {
      lista.add(
              new Cultivo(
                      rs.getInt("culId"),
                      rs.getString("culNombre"),
                      rs.getString("culNombreCientifico"),
                      rs.getString("culResenia"),
                      rs.getString("culDescripcion"),
                      (rs.getString("imagen") == null ? "" : rs.getString("imagen"))
              )
      );
    }

    rs.close();
    con.cerrar();
    return lista;
  }

  public Cultivo getCultivoById(int idCultivo)
          throws ClassNotFoundException, SQLException {
    con.conectar();
    PreparedStatement ps = con.prepareStatement(sCultivoById);
    ps.setInt(1, idCultivo);
    ResultSet rs = ps.executeQuery();

    Cultivo c = null;
    if (rs.next()) {
      c = new Cultivo(
              rs.getInt("culId"),
              rs.getString("culNombre"),
              rs.getString("culNombreCientifico"),
              rs.getString("culResenia"),
              rs.getString("culDescripcion"),
              (rs.getString("imagen") == null ? "" : rs.getString("imagen"))
      );
    }

    rs.close();
    con.cerrar();

    return c;
  }

}
