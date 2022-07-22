
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import util.MySQLConexion;
import modelo.profesor;
import modelo.asistencias;

public class ProfesorSQL{
    
    
    public void agregar(profesor p){
        Connection cn=MySQLConexion.getConexion();
        try{
            String sql="insert into colegio values(?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, p.getIdProf());
            st.setInt(2, p.getIdHorario());     
            st.setString(3, p.getCargo());
            st.setString(4, p.getGenero());
            st.setString(5, p.getNroDocu());
            st.setString(6, p.getNombres());
            st.setString(7, p.getApePat());
            st.setString(8, p.getApeMat());
            st.setString(9, p.getTelf());
            st.setString(10, p.getCorreo());
            st.setString(11, p.getCurso());
            st.executeUpdate();
            }
            
        catch (Exception e) {
            e.printStackTrace();
        }
        finally{
                try{
                    cn.close();
                }
                catch(Exception e2){}
            }
    }
    
    public void actualizar(asistencias a){
       Connection cn=MySQLConexion.getConexion();
      try{
            String sql="update asistencias set id_profe=?,fecha_entrada=?,hora_entrada=?,fecha_salida=?,hora_salida? where id=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, a.getIdUser());
            st.setString(2, a.getFechaEntra());
            st.setString(3, a.getHoraEntra());
            st.setString(4, a.getFechaSali());
            st.setString(5, a.getHoraSali());
            st.executeUpdate();
            }
            
        catch (Exception e) {
            e.printStackTrace();
        }
        finally{
                try{
                    cn.close();
                }
                catch(Exception e2){}
            }
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
    
      
      public profesor Busca(String documento){
          profesor p=null;
          Connection cn=MySQLConexion.getConexion();
          
          try{
              String sql="select id_profe from colegio where nro_documento=?";
              PreparedStatement st=cn.prepareStatement(sql);
              st.setString(1, documento);
              ResultSet rs=st.executeQuery();
              if(rs.next()){
              p =new profesor();
              p.setIdProf(rs.getInt(1));
              }
          }catch(SQLException ex) {
            ex.printStackTrace();
        }
        return p;
      
      }
      
      public profesor busca(String id) {
        profesor p=null;
        Connection cn=MySQLConexion.getConexion();
        try {
            String sql="select id_profe,id_horario,nom_cargo,genero,nro_documento,nombres,apellido_paterno,"
                    + "apellido_materno,telefono,correo_electronico,nom_curso from colegio"
                    + " where id_profe=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs=st.executeQuery();
            if(rs.next()){                
                p=new profesor();
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
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }
      
         public void anula(String profe) {
        Connection cn=MySQLConexion.getConexion();
        try{
            String sql="delete from colegio where id_profe=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setString(1, profe);
            st.executeUpdate();
            }
            
        catch (Exception e) {
            e.printStackTrace();
        }
        finally{
                try{
                    cn.close();
                }
                catch(Exception e2){}
            }        
    }
      
      public void agregarEnt(asistencias a) {
        Connection cn=MySQLConexion.getConexion();
        try{
            String sql="insert into asistencias(id_usuario,fecha_entrada,hora_entrada)\n" +
                       " VALUES(?,?,?)";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, a.getIdUser());
            st.setString(2, a.getFechaEntra());
            st.setString(3, a.getHoraEntra());
            st.executeUpdate();
            }
            
        catch (Exception e) {
            e.printStackTrace();
        }
        finally{
                try{
                    cn.close();
                }
                catch(Exception e2){}
            }
    }

      
      public void modificarProfe(profesor p) {
        Connection cn=MySQLConexion.getConexion();
        try{
            String sql="update colegio set id_profe=?,id_horario=?, nom_cargo=?, genero=?, nro_documento=?, nombres=?,"
                    + "apellido_paterno=?,apellido_materno=?,telefono=?,correo_electronico=?,nom_curso=? where id=?";
            PreparedStatement st=cn.prepareStatement(sql);
            st.setInt(1, p.getIdProf());
            st.setInt(2, p.getIdHorario());
            st.setString(3, p.getCargo());
            st.setString(4, p.getGenero());
            st.setString(5, p.getNroDocu());
            st.setString(6, p.getNombres());
            st.setString(7, p.getApePat());
            st.setString(8, p.getApeMat());
            st.setString(9, p.getTelf());
            st.setString(10, p.getCorreo());
            st.setString(11, p.getCurso());
            st.executeUpdate();
            }
            
        catch (Exception e) {
            e.printStackTrace();
        }
        finally{
                try{
                    cn.close();
                }
                catch(Exception e2){}
            }        
    }
      

      
      
    

}
