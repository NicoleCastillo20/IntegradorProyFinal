
package modelo;

public class Notas {
    private String codc;
    private String nomc;
    private int exs;
    private int ext;
    
    public double prome(){
      return (exs+ext)/2;
  }  
    
    public String Obser(){
      return prome()>=11.5? "Aprobado":"Desaprobado";
  }

    public String getCodc() {
        return codc;
    }

    public void setCodc(String codc) {
        this.codc = codc;
    }

    public String getNomc() {
        return nomc;
    }

    public void setNomc(String nomc) {
        this.nomc = nomc;
    }

    public int getExs() {
        return exs;
    }

    public void setExs(int exs) {
        this.exs = exs;
    }

    public int getExt() {
        return ext;
    }

    public void setExt(int ext) {
        this.ext = ext;
    }
  
    
}
