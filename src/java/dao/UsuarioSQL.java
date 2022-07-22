
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import util.MySQLConexion;
import java.util.ArrayList;
import java.util.List;
import modelo.*;


public class UsuarioSQL {

    public int InicioSes(String user,String contra){
        
    Connection cn=MySQLConexion.getConexion();
    int nivel=0;
    try{
      String sql="select id_tipo_usuario from usuarios "
              + "where correo = '"+user+"' and contrasenia = '"+contra+"'";  
        PreparedStatement st=cn.prepareStatement(sql);
        ResultSet rs=st.executeQuery();
        while(rs.next()){
           nivel=rs.getInt(1);
        }
    }catch(Exception ex){
        ex.printStackTrace();
    }
       return nivel;
   }
}
