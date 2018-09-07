package Rest.ubicaciones.modelos;

public class Ubicacion {

  private int id;
  private int idCultivo;
  private String nombre;
  private double latitud;
  private double longuitud;

  public Ubicacion() {
  }

  public Ubicacion(int id, String nombre, double latitud, double longuitud) {
    this.id = id;
    this.nombre = nombre;
    this.latitud = latitud;
    this.longuitud = longuitud;
  }

  public Ubicacion(int id, int idCultivo, String nombre, double latitud, double longuitud) {
    this.id = id;
    this.idCultivo = idCultivo;
    this.nombre = nombre;
    this.latitud = latitud;
    this.longuitud = longuitud;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public int getIdCultivo() {
    return idCultivo;
  }

  public void setIdCultivo(int idCultivo) {
    this.idCultivo = idCultivo;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public double getLatitud() {
    return latitud;
  }

  public void setLatitud(double latitud) {
    this.latitud = latitud;
  }

  public double getLonguitud() {
    return longuitud;
  }

  public void setLonguitud(double longuitud) {
    this.longuitud = longuitud;
  }

}
