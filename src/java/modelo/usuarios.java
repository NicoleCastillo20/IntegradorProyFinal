
package modelo;


public class usuarios {
    private int idUser;
    private int idTipoUser;
    private String password;
    private String correo;

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }


    public int getIdTipoUser() {
        return idTipoUser;
    }

    public void setIdTipoUser(int idTipoUser) {
        this.idTipoUser = idTipoUser;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
}
