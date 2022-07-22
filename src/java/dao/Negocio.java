
package dao;
import util.MySQLConexion;
import modelo.*;
import java.util.*;
import java.sql.*;
public class Negocio {

    public List<profesor> listaProfe(){
    List<profesor> lis=new ArrayList();
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select id_profe,id_horario,nom_cargo,genero,nro_documento,nombres,"
              + "apellido_paterno,apellido_materno,telefono,correo_electronico,"
              + "nom_curso from colegio";  
        PreparedStatement st=cn.prepareStatement(sql);
        ResultSet rs=st.executeQuery();
        while(rs.next()){//leer cada fila de la tabla
            profesor p=new profesor();
            p.setIdProf(rs.getInt(1));
            p.setIdHorario(rs.getInt(2));
            p.setCargo(rs.getString(3));
            p.setGenero(rs.getString(4));
            p.setNroDocu(rs.getString(5));
            p.setNombres(rs.getString(6));
            p.setApePat(rs.getString(7));
            p.setApeMat(rs.getString(8));
            p.setTelf(rs.getString(9));
            p.setCorreo(rs.getString(10));
            p.setCurso(rs.getString(11));
            lis.add(p); //el objeto prestamo de un cliente pasar a la lista
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return lis;
   }
    
   
    public List<cursos> listaCursos(){
    List<cursos> lis=new ArrayList();
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select idCurso,NomCurso from curso";  
        PreparedStatement st=cn.prepareStatement(sql);
       
        ResultSet rs=st.executeQuery();
        while(rs.next()){//leer cada fila de la tabla
            cursos c=new cursos();
            c.setId_curso(rs.getString(1));
            c.setNom_curso(rs.getString(2));
            lis.add(c); 
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return lis;
   }
    
    public List<horarios> listaHora(){
    List<horarios> lis=new ArrayList();
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select id, descripcion from horarios";  
        PreparedStatement st=cn.prepareStatement(sql);
       
        ResultSet rs=st.executeQuery();
        while(rs.next()){//leer cada fila de la tabla
            horarios h=new horarios();
            h.setIdHorario(rs.getInt(1));
            h.setDescripHora(rs.getString(2));
            lis.add(h); 
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return lis;
   }
    
    
     public List<cursos> listaCur(){
    List<cursos> lis=new ArrayList();
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select idCurso,NomCurso from curso";  
        PreparedStatement st=cn.prepareStatement(sql);
       
        ResultSet rs=st.executeQuery();
        while(rs.next()){//leer cada fila de la tabla
            cursos c=new cursos();
            c.setId_curso(rs.getString(1));
            c.setNom_curso(rs.getString(2));
            lis.add(c); 
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return lis;
   }
     
     
      public profesor BuscarProf(String documento) {
        profesor p = null;
         Connection cn=MySQLConexion.getConexion();
        try {
            String sql = "select id_profe,id_horario,nom_cargo,genero,nro_documento,nombres,"
              + "apellido_paterno,apellido_materno,telefono,correo_electronico,"
              + "nom_curso from colegio where nro_documento = ?";
    
           PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, documento);
            ResultSet rs=st.executeQuery();

            if (rs.next()) {
                p = new profesor();
                p.setIdProf(rs.getInt(1));
                p.setIdHorario(rs.getInt(2));
                p.setCargo(rs.getString(3));
                p.setGenero(rs.getString(4));
                p.setNroDocu(rs.getString(5));
                p.setNombres(rs.getString(6));
                p.setApePat(rs.getString(7));
                p.setApeMat(rs.getString(8));
                p.setTelf(rs.getString(9));
                p.setCorreo(rs.getString(10));
                p.setCurso(rs.getString(11));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return p;
    }

      
       public List<profesor> lisDoc(){
    List<profesor> lis=new ArrayList();
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select id_profe,nro_documento from colegio";  
        PreparedStatement st=cn.prepareStatement(sql);
        ResultSet rs=st.executeQuery();
        while(rs.next()){//leer cada fila de la tabla
            profesor p=new profesor();
            p.setIdProf(rs.getInt(1));
            p.setNroDocu(rs.getString(2));
            lis.add(p); //el objeto prestamo de un cliente pasar a la lista
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return lis;
   }   
      
      
       public List<asistencias> ListarAsistencia(String documento) {
        List<asistencias> lista = new ArrayList<>();
        Connection cn=MySQLConexion.getConexion();
        try {
            String sql = "select id_asistpro, fecha_entrada , hora_entrada, fecha_salida , hora_salida "
                    + " from asistencias_profesor "
                    + " where id_profe in (select u.id_profe "
                    + " from colegio e inner join usuarios u"
                    + " on e.id_profe = u.id_profe "
                    + " where nro_documento = ?) order by 2 asc , 3 asc";
       
           PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, documento);
             ResultSet rs=st.executeQuery();

            while (rs.next()) {
                asistencias a = new asistencias();
                a.setIdAsistencia(rs.getInt(1));
                a.setFechaEntra(rs.getString(2));
                a.setHoraEntra(rs.getString(3));
                a.setFechaSali(rs.getString(4));
                a.setHoraSali(rs.getString(5));
                lista.add(a);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return lista;
    }
       
          public List<Grado> lisGra(){
    List<Grado> lis=new ArrayList();
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select idgra,nomgra from grado";  
        PreparedStatement st=cn.prepareStatement(sql);
        ResultSet rs=st.executeQuery();
        while(rs.next()){
            Grado p=new Grado();
            p.setCode(rs.getString(1));
            p.setNomgra(rs.getString(2));
            lis.add(p); 
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return lis;
   }   
    
   //lista de alumnos
   public List<Alumno> lisAlumno(String id){
    List<Alumno> lis=new ArrayList();
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select idalumno,apealumno,nomalumno from alumno where idgra=?";  
        PreparedStatement st=cn.prepareStatement(sql);
        st.setString(1, id);
        ResultSet rs=st.executeQuery();
        while(rs.next()){//leer cada fila de la tabla
            Alumno p=new Alumno();
            p.setCoda(rs.getString(1));
            p.setApe(rs.getString(2));
            p.setNoma(rs.getString(3));
            lis.add(p); 
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return lis;
   }    
    
   //filtra apellido
   public List<Alumno> filtra(String ape){
    List<Alumno> lis=new ArrayList();
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select idalumno,apealumno,nomalumno,idgra,proce from alumno where apealumno like ? "
              + " or nomalumno like ?";  
        PreparedStatement st=cn.prepareStatement(sql);
        st.setString(1, ape+"%");
         st.setString(2, ape+"%");
        ResultSet rs=st.executeQuery();
        while(rs.next()){//leer cada fila de la tabla
            Alumno p=new Alumno();
            p.setCoda(rs.getString(1));
            p.setApe(rs.getString(2));
            p.setNoma(rs.getString(3));
            p.setCode(rs.getString(4));
            p.setProce(rs.getString(5));
            lis.add(p);
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return lis;
   }   
   
   //lista de notas
   public List<Notas> lisNota(String id){
    List<Notas> lis=new ArrayList();
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select curso.idcurso, nomcurso,examen, exatrim\n"
              + "from curso join notas on curso.idcurso=notas.idcurso\n" +"where idalumno =? ";
        PreparedStatement st=cn.prepareStatement(sql);
        st.setString(1, id);
        ResultSet rs=st.executeQuery();
        while(rs.next()){//leer cada fila de la tabla
            Notas p=new Notas();
            p.setCodc(rs.getString(1));
            p.setNomc(rs.getString(2));
            p.setExs(rs.getInt(3));
            p.setExt(rs.getInt(4));
            lis.add(p); 
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return lis;
   }  
   
    //LISTA DE PAGOS
   public List<Pagos> lisPagos(String id){
    List<Pagos> lis=new ArrayList();
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select semestre, monto from pagos where idalumno=?";  
        PreparedStatement st=cn.prepareStatement(sql);
        st.setString(1, id);
        ResultSet rs=st.executeQuery();
        while(rs.next()){//leer cada fila de la tabla
            Pagos p=new Pagos();
            p.setSemestre(rs.getString(1));
            p.setMonto(rs.getDouble(2));
            lis.add(p); 
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return lis;
   }  
    
   //LISTA DE ASISTENCIAS
   public List<AsistenciasA> lisAsistencias(String id){
    List<AsistenciasA> lis=new ArrayList();
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select curso.idcurso, nomcurso,nroasis, diasasis\n"
              + "from curso join asistencias on curso.idcurso=asistencias.idcurso\n" +"where idalumno =? ";  
        PreparedStatement st=cn.prepareStatement(sql);
        st.setString(1, id);
        ResultSet rs=st.executeQuery();
        while(rs.next()){//leer cada fila de la tabla
            AsistenciasA p=new AsistenciasA();
            p.setCode(rs.getString(1));
            p.setNomc(rs.getString(2));
            p.setNroA(rs.getInt(3));
            p.setDiasA(rs.getInt(4));
            lis.add(p); 
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return lis;
   }  
   
    //**************************se agrego********************
   public void adicion(Alumno a){
     Connection cn=MySQLConexion.getConexion();
     try{
       String sql="{call spadialu(?,?,?,?)}";  
       CallableStatement st=cn.prepareCall(sql);
       
       st.setString(1,a.getApe());
       st.setString(2, a.getNoma());
       st.setString(3, a.getCode());
       st.setString(4, a.getProce());
       st.executeUpdate();
     }catch(Exception ex){
         ex.printStackTrace();
     }
     }
   
   public void modificar(int nroAsis, String idAlumno, String idCurso){
     Connection cn=MySQLConexion.getConexion();
     try{
       String sql="{call spupdate(?,?,?)}";  
       CallableStatement st=cn.prepareCall(sql);
       
       st.setInt(1,nroAsis);
       st.setString(2,idAlumno);
       st.setString(3,idCurso);

       st.executeUpdate();
     }catch(Exception ex){
         ex.printStackTrace();
     }
     }
   
   public AsistenciasA nroAsistencia(String idAlumno, String idCurso) {
       AsistenciasA as = new AsistenciasA();
       Connection cn=MySQLConexion.getConexion();
       
       
       try{
       String sql="SELECT nroAsis FROM asistencias WHERE idAlumno = "+idAlumno+" and idCurso ="+ idCurso;  
       CallableStatement st=cn.prepareCall(sql);
       ResultSet rs=st.executeQuery();
       if(rs.next()){
          as.setNroA(rs.getInt(1));
       }
       
     }catch(Exception ex){
         ex.printStackTrace();
     } 
      return as;   
      
   }
   
   
   
   
   
   

    public Alumno BusAlumno(String id){
    Alumno p=null;
    Connection cn=MySQLConexion.getConexion();
    try{
      String sql="select idalumno,apealumno,nomalumno,idgra,proce from alumno where idAlumno=?";  
        PreparedStatement st=cn.prepareStatement(sql);
        st.setString(1, id);
        ResultSet rs=st.executeQuery();
          if(rs.next()){//leer cada fila de la tabla
            p=new Alumno();
            p.setCoda(rs.getString(1));
            p.setApe(rs.getString(2));
            p.setNoma(rs.getString(3));
            p.setCode(rs.getString(4));
            p.setProce(rs.getString(5));
        
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return p;
   }   
   
    
}
