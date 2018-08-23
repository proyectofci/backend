package Rest.cultivos.modelos;

public class Cultivo {

  private int id;
  private String nombre;
  private String nombreCientifico;
  private String resena;
  private String descripcion;
  private String imagen;

  public Cultivo() {
  }

  public Cultivo(int id, String nombre, String nombreCientifico,
          String resena, String descripcion, String imagen) {
    this.id = id;
    this.nombre = nombre;
    this.nombreCientifico = nombreCientifico;
    this.resena = resena;
    this.descripcion = descripcion;
    this.imagen = imagen;
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

  public String getResena() {
    return resena;
  }

  public void setResena(String resena) {
    this.resena = resena;
  }

  public String getDescripcion() {
    return descripcion;
  }

  public void setDescripcion(String descripcion) {
    this.descripcion = descripcion;
  }

  public String getImagen() {
    return imagen;
  }

  public void setImagen(String imagen) {
    this.imagen = imagen;
  }

}
