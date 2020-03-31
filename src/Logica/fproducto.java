/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;
import Datos.vproducto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author NELSON
 */
public class fproducto {
    private Conexion mysql = new Conexion();
    private Connection cn = mysql.conectar();
    private String sSQL="";
//    private String sSQL2="";
    public Integer totalregistros;
    
    public DefaultTableModel mostrar(String buscar){
    DefaultTableModel modelo;
    String [] titulos = {"Código","Sección","Nombre","Precio","Fecha","Importado","País Origen"};
    String [] registro = new String[7];
    totalregistros=0;
    modelo = new DefaultTableModel(null,titulos);
   
    sSQL = "SELECT * FROM hoja1 WHERE CÓDIGO_ARTICULO LIKE '%"+
            buscar +"%' ORDER BY CÓDIGO_ARTICULO ";
    try{
        Statement st = cn.createStatement();
        ResultSet rs=st.executeQuery(sSQL);
        
        while(rs.next()){
            registro [0]=rs.getString("CÓDIGO_ARTICULO");
            registro [1]=rs.getString("SECCIÓN");
            registro [2]=rs.getString("NOMBRE_ARTICULO");
            registro [3]=rs.getString("PRECIO");
            registro [4]=rs.getString("FECHA");
            registro [5]=rs.getString("IMPORTADO");
            registro [6]=rs.getString("PAIS_DE_ORÍGEN");
          
            
            totalregistros=totalregistros+1;
            modelo.addRow(registro);
        }
        return modelo;
    }catch(Exception e){
      JOptionPane.showConfirmDialog(null, e);
      return null;
    }
}
  public boolean insertar(vproducto dts){
    
        sSQL ="INSERT INTO hoja1 (CÓDIGO_ARTICULO,SECCIÓN,NOMBRE_ARTICULO,PRECIO,FECHA,IMPORTADO,PAIS_DE_ORÍGEN)"+ 
                "VALUES (?,?,?,?,?,?,?)";
      try{ 
          PreparedStatement pst = cn.prepareStatement(sSQL);
          
          
          pst.setString(1, dts.getCodigo_articulo());
          pst.setString(2, dts.getSeccion());
          pst.setString(3, dts.getNombre_articulo());
           pst.setString(4, dts.getPrecio());
          pst.setString(5, dts.getFecha());
          pst.setString(6, dts.getImportado());
           pst.setString(7, dts.getPais_de_origen());
          


          
          int n=pst.executeUpdate();
          if(n!=0){
             
                 return true;
             
            
          }else{
              return false;
          }
    }catch(Exception e){
        JOptionPane.showConfirmDialog(null, e);
        return false;
    }
} 
  public boolean editar(vproducto dts){
    sSQL ="UPDATE hoja1  SET CÓDIGO_ARTICULO=?,SECCIÓN=?,NOMBRE_ARTICULO=?,PRECIO=?,FECHA=?,IMPORTADO=?,PAIS_DE_ORÍGEN=?"+
            "WHERE CÓDIGO_ARTICULO=?";
    

    
    try{ 
          PreparedStatement pst = cn.prepareStatement(sSQL);
 
          pst.setString(1, dts.getCodigo_articulo());
         pst.setString(2, dts.getSeccion());
          pst.setString(3, dts.getNombre_articulo());
           pst.setString(4, dts.getPrecio());
          pst.setString(5, dts.getFecha());
          pst.setString(6, dts.getImportado());
           pst.setString(7, dts.getPais_de_origen());
          
         pst.setString(8, dts.getCodigo_articulo());
          int n=pst.executeUpdate();
          if(n!=0){
             return true;
          }else{
              return false;
          }
    }catch(Exception e){
        JOptionPane.showConfirmDialog(null, e);
        return false;
    }
}
  public boolean eliminar(vproducto dts){
    sSQL ="DELETE FROM hoja1 WHERE CÓDIGO_ARTICULO=?";

     try{ 
          PreparedStatement pst = cn.prepareStatement(sSQL);

          
          
          pst.setString(1, dts.getCodigo_articulo());
          
          

          
          int n=pst.executeUpdate();
          if(n!=0){
             
                 return true;
             
          }else{
              return false;
          }
    }catch(Exception e){
        JOptionPane.showConfirmDialog(null, e);
        return false;
    }
}  
}
