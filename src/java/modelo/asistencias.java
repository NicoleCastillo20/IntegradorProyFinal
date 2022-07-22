
package modelo;


public class asistencias {
    private int idAsistencia;
    private int idUser;
    private String fechaEntra;
    private String horaEntra;
    private String fechaSali;
    private String horaSali;

    public int getIdAsistencia() {
        return idAsistencia;
    }

    public void setIdAsistencia(int idAsistencia) {
        this.idAsistencia = idAsistencia;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getFechaEntra() {
        return fechaEntra;
    }

    public void setFechaEntra(String fechaEntra) {
        this.fechaEntra = fechaEntra;
    }

    public String getHoraEntra() {
        return horaEntra;
    }

    public void setHoraEntra(String horaEntra) {
        this.horaEntra = horaEntra;
    }

    public String getFechaSali() {
        return fechaSali;
    }

    public void setFechaSali(String fechaSali) {
        this.fechaSali = fechaSali;
    }

    public String getHoraSali() {
        return horaSali;
    }

    public void setHoraSali(String horaSali) {
        this.horaSali = horaSali;
    }
}
