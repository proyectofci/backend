package Rest.cultivos.modelos;

public class Cultivo {

  private int id;
  private String nombre;
  private String descripcion;
  private String nombreCientifico;
  private String resena;
  private String rutaImagenMin;
  private String rutaImagenMax;

  public Cultivo() {
  }

  public Cultivo(int id, String nombre, String descripcion, String nombreCientifico,
          String resena, String rutaImagenMin, String rutaImagenMax) {
    this.id = id;
    this.nombre = nombre;
    this.descripcion = descripcion;
    this.nombreCientifico = nombreCientifico;
    this.resena = resena;
    this.rutaImagenMin = rutaImagenMin;
    this.rutaImagenMax = rutaImagenMax;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public String getDescripcion() {
    return descripcion;
  }

  public void setDescripcion(String descripcion) {
    this.descripcion = descripcion;
  }

  public String getNombreCientifico() {
    return nombreCientifico;
  }

  public void setNombreCientifico(String nombreCientifico) {
    this.nombreCientifico = nombreCientifico;
  }

  public String getResena() {
    return resena;
  }

  public void setResena(String resena) {
    this.resena = resena;
  }

  public String getRutaImagenMin() {
    return rutaImagenMin;
  }

  public void setRutaImagenMin(String rutaImagenMin) {
    this.rutaImagenMin = rutaImagenMin;
  }

  public String getRutaImagenMax() {
    return rutaImagenMax;
  }

  public void setRutaImagenMax(String rutaImagenMax) {
    this.rutaImagenMax = rutaImagenMax;
  }

}
