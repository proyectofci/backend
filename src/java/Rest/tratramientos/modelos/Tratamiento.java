package Rest.tratramientos.modelos;

public class Tratamiento {

  private int id;
  private String nombreProducto;
  private String acccionFitosanitaria;
  private String cantidadDosis;
  private String aplicacionDosis;
  private String aplicacionModo;

  public Tratamiento() {
  }

  public Tratamiento(int id, String nombreProducto) {
    this.id = id;
    this.nombreProducto = nombreProducto;
  }

  public Tratamiento(int id, String nombreProducto, String acccionFitosanitaria,
          String cantidadDosis, String aplicacionDosis, String aplicacionModo) {
    this.id = id;
    this.nombreProducto = nombreProducto;
    this.acccionFitosanitaria = acccionFitosanitaria;
    this.cantidadDosis = cantidadDosis;
    this.aplicacionDosis = aplicacionDosis;
    this.aplicacionModo = aplicacionModo;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getNombreProducto() {
    return nombreProducto;
  }

  public void setNombreProducto(String nombreProducto) {
    this.nombreProducto = nombreProducto;
  }

  public String getAcccionFitosanitaria() {
    return acccionFitosanitaria;
  }

  public void setAcccionFitosanitaria(String acccionFitosanitaria) {
    this.acccionFitosanitaria = acccionFitosanitaria;
  }

  public String getCantidadDosis() {
    return cantidadDosis;
  }

  public void setCantidadDosis(String cantidadDosis) {
    this.cantidadDosis = cantidadDosis;
  }

  public String getAplicacionDosis() {
    return aplicacionDosis;
  }

  public void setAplicacionDosis(String aplicacionDosis) {
    this.aplicacionDosis = aplicacionDosis;
  }

  public String getAplicacionModo() {
    return aplicacionModo;
  }

  public void setAplicacionModo(String aplicacionModo) {
    this.aplicacionModo = aplicacionModo;
  }
}
