
package modelo;

/**
 *
 * @author NICOLE
 */
public class AsistenciasA {
    
     private String code;
     private String nomc;
     private int nroA;
     private int diasA;

    public AsistenciasA() {
    }

    public AsistenciasA(String code, String nomc, int nroA, int diasA) {
        this.code = code;
        this.nomc = nomc;
        this.nroA = nroA;
        this.diasA = diasA;
    }
    

     public String Obser(){
      return nroA>= 20? "Buena Asistencia":"Mala Asistencia";
  }
     
     
     
     
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getNroA() {
        return nroA;
    }

    public void setNroA(int nroA) {
        this.nroA = nroA;
    }

    public String getNomc() {
        return nomc;
    }

    public void setNomc(String nomc) {
        this.nomc = nomc;
    }
    
    public int getDiasA() {
        return diasA;
    }

    public void setDiasA(int diasA) {
        this.diasA = diasA;
    }
     
   
}
