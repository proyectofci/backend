package Rest.afecciones.modelos;

public class Afeccion {

  private int id;
  private String nombre;
  private String nombreCientifico;
  private String descripcion;
  private String rutaImagen;

  public Afeccion() {
  }

  public Afeccion(int id, String nombre, String nombreCientifico,
          String descripcion, String rutaImagen) {
    this.id = id;
    this.nombre = nombre;
    this.nombreCientifico = nombreCientifico;
    this.descripcion = descripcion;
    this.rutaImagen = rutaImagen;
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

  public String getNombreCientifico() {
    return nombreCientifico;
  }

  public void setNombreCientifico(String nombreCientifico) {
    this.nombreCientifico = nombreCientifico;
  }

  public String getDescripcion() {
    return descripcion;
  }

  public void setDescripcion(String descripcion) {
    this.descripcion = descripcion;
  }

  public String getRutaImagen() {
    return rutaImagen;
  }

  public void setRutaImagen(String rutaImagen) {
    this.rutaImagen = rutaImagen;
  }

}
