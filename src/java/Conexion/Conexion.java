/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Jonathann
 */
public class Conexion {
    
//     public static void main(String[] args) {
//        
//      Conexion c=new Conexion();
//      c.conecta();
//     if(c!=null){
//     System.out.print("conecto");
//     }else{
//     System.out.print("no conecto");
//     }
//         
//        
//    }
      public Connection conecta()
 { 
         
        Connection cn=null;
        //String url="jdbc:sqlserver://DESARROLLO6;databaseName=BDcampus;integratedSecurity=true;";
        String url="jdbc:odbc:permisos";
        //String url="jdbc:sqlserver://192.168.3.23;databaseName=BDcampus;";
   	try
	{
	 //Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
         Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        // cn=DriverManager.getConnection(url,"sa","miguel$2012.");//3 parametros (driver,usuario,clave)
         
        cn=DriverManager.getConnection(url);//autentificacoin de windows
         
	}
	catch(Exception e)
	{
	  System.out.print("Error:"+e.getMessage());
	}
        return cn;
 } 
}
