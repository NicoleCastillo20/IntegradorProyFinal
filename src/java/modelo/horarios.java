
package modelo;


public class horarios {
    private int idHorario;
    private String descripHora;
    private String horaEntra;
    private String horaSali;

    public int getIdHorario() {
        return idHorario;
    }

    public void setIdHorario(int idHorario) {
        this.idHorario = idHorario;
    }

  
    public String getHoraEntra() {
        return horaEntra;
    }

    public void setHoraEntra(String horaEntra) {
        this.horaEntra = horaEntra;
    }

    public String getHoraSali() {
        return horaSali;
    }

    public void setHoraSali(String horaSali) {
        this.horaSali = horaSali;
    }

    public String getDescripHora() {
        return descripHora;
    }

    public void setDescripHora(String descripHora) {
        this.descripHora = descripHora;
    }
}
