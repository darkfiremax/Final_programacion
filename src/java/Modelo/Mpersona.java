/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Conexion.Conexion;
import Entidades.Epersona;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import Entidades.*;
import java.sql.Date;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 *
 * @author Jonathann
 */
public class Mpersona {
Connection cn = null;
Conexion con=new Conexion();
int perfil=0;
List lPersona =new ArrayList();
Map mPersona = null;
ResultSet rs = null;





    public int getPerfil() {
        return perfil;
    }

    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }
    public Mpersona() {   
        
    }
    public void Mconecta(){
    cn=con.conecta();
    }
     public void Mdesconecta(){
    
    }


 public int consultar_person(Epersona e) throws SQLException{
 int resp = 0;
 Mconecta(); 
 CallableStatement ctms =cn.prepareCall("{call dbo.Consulta_persona_tipo(?,?,?,?)}");
  ctms.setString(1,e.getNumPersona());
  ctms.setString(2,e.getClave());
  ctms.registerOutParameter(3,java.sql.Types.INTEGER);
  ctms.registerOutParameter(4,java.sql.Types.INTEGER);
  ctms.execute();
  resp=ctms.getInt(3);
  perfil=ctms.getInt(4);
  ctms.close();
  Mdesconecta();

  return resp;
 
 }  
 
public List consulta_persona(String codigo) throws SQLException{
Mconecta();    
CallableStatement ctms =cn.prepareCall("{call dbo.Buscar_estudiantes_codigo(?)}");
ctms.setString(1, codigo);
rs=ctms.executeQuery();
if(rs.next()){
mPersona=new HashMap();
mPersona.put("Codigo",rs.getString(1));
mPersona.put("Nombre",rs.getString(2));
mPersona.put("Apellido",rs.getString(3));
mPersona.put("Telefono",rs.getString(4));
mPersona.put("Documento",rs.getString(5));
mPersona.put("Correo",rs.getString(6));
lPersona.add(mPersona);
}
ctms.close();
Mdesconecta();
return lPersona;
}

public List consulta_persona2(String codigo) throws SQLException{
Mconecta();
    CallableStatement ctms =cn.prepareCall("{call dbo.Buscar_persona_actualizar(?)}");
ctms.setString(1, codigo);
rs=ctms.executeQuery();
if(rs.next()){
mPersona=new HashMap();
mPersona.put("Codigo",rs.getString(1));
mPersona.put("Nombre",rs.getString(2));
mPersona.put("Apellido",rs.getString(3));
mPersona.put("Carrera",rs.getString(4));
mPersona.put("Telefono",rs.getString(5));
mPersona.put("Perfil",rs.getString(6));
mPersona.put("Documento",rs.getString(7));
mPersona.put("Clave",rs.getString(8));
mPersona.put("Email",rs.getString(9));

lPersona.add(mPersona);
}
ctms.close();
Mdesconecta();
return lPersona;
}

public List Listar_carreras() throws SQLException{
Mconecta();
    List lCarrera =new ArrayList();
CallableStatement ctms2 =cn.prepareCall("{call dbo.Listar(?)}");
ctms2.setInt(1,1);
  
  
  rs=ctms2.executeQuery();
  while(rs.next()){
  mPersona=new HashMap();
  mPersona.put("pkCarrera",String.valueOf(rs.getInt(1)));
  mPersona.put("carrera",rs.getString(2));
  
  lCarrera.add(mPersona);
  }
  ctms2.close();
  Mdesconecta();
  return lCarrera;
}

public int Inserta_persona(Epersona p) throws SQLException{
//Insertar_persona
int res=0;
Mconecta();  
CallableStatement ctms =cn.prepareCall("{call dbo.Insertar_persona(?,?,?,?,?,?,?,?,?,?)}");
ctms.setString(1,p.getNumPersona());
ctms.setString(2,p.getNombre());
ctms.setString(3,p.getApellido());
ctms.setInt(4,p.getCarrera());
ctms.setString(5,p.getTel());
ctms.setInt(6,3);
ctms.setString(7,p.getNum_doc());
ctms.setString(8,"1234");
ctms.setString(9,p.getCorreo());
ctms.registerOutParameter(10,java.sql.Types.INTEGER);
ctms.execute();
res=ctms.getInt(10);
ctms.close();
Mdesconecta();
return res;
}
public List Listar_perfil() throws SQLException{
Mconecta();
    List lPerfil =new ArrayList();
CallableStatement ctms2 =cn.prepareCall("{call dbo.Listar_peril(?)}");
ctms2.setInt(1,1);
  rs=ctms2.executeQuery();
  while(rs.next()){
  mPersona=new HashMap();
  mPersona.put("pkPerfil",String.valueOf(rs.getInt(1)));
  mPersona.put("perfil",rs.getString(2));
  lPerfil.add(mPersona);
  }
  ctms2.close();
  Mdesconecta();
  return lPerfil;
}

public int Actualizar_persona(Epersona p) throws SQLException{
int ban=0;
Mconecta();
CallableStatement ctms =cn.prepareCall("{call dbo.Actualizar_persona_codigo(?,?,?,?,?,?,?,?,?,?)}");
ctms.setString(1,p.getNumPersona());
ctms.setString(2,p.getNombre());
ctms.setString(3,p.getApellido());
ctms.setInt(4,p.getCarrera());
ctms.setString(5,p.getTel());
ctms.setInt(6,p.getPerfil());
ctms.setString(7,p.getNum_doc());
ctms.setString(8,p.getClave());
ctms.setString(9,p.getCorreo());
ctms.registerOutParameter(10,java.sql.Types.INTEGER);
ctms.execute();
ban=ctms.getInt(10);
ctms.close();
Mdesconecta();
return ban;
}

public void insertar_permiso(Epermiso pe) throws SQLException{
//insertar_permiso
Mconecta();
CallableStatement ctms =cn.prepareCall("{call dbo.insertar_permiso(?,?,?,?,?,?,?)}");
ctms.setInt(1,pe.getFkTipo());
ctms.setString(2,pe.getFkPersona());
ctms.setString(3,pe.getChrDescripcion());
ctms.setString(4,pe.getDtmFechaIni());
ctms.setString(5,pe.getmFechaFin());
ctms.setString(6,pe.getDtmHoraIni());
ctms.setString(7,pe.getDtmHoraFin());
ctms.execute();
ctms.close();
Mdesconecta();
}

public List listar_Tipo_salida() throws SQLException{

//Listar_tipo_salida
Mconecta();
    List lTipos =new ArrayList();
CallableStatement ctms =cn.prepareCall("{call dbo.Listar_tipo_salida(?)}");
ctms.setInt(1,1);
  
  rs=ctms.executeQuery();
  while(rs.next()){
  mPersona=new HashMap();
  mPersona.put("pkSalida",String.valueOf(rs.getInt(1)));
  mPersona.put("salida",rs.getString(2));
  
  lTipos.add(mPersona);
  }
  ctms.close();
  Mdesconecta();
  return lTipos;
}

public List Historial_permisos_usuario(Epermiso p,String codigo) throws SQLException{
Mconecta();
List lPermiso =new ArrayList();
Map mPer = null;
CallableStatement ctms =cn.prepareCall("{call dbo.Historial_permisos_usuario(?,?,?,?,?,?,?)}");
ctms.setString(1,p.getAnoi());
ctms.setString(2,p.getAnof());
ctms.setString(3,p.getMesi());
ctms.setString(4,p.getMesf());
ctms.setString(5,p.getDiai());
ctms.setString(6,p.getDiaf());
ctms.setString(7,codigo);
rs=ctms.executeQuery();
while(rs.next()){
mPer=new HashMap();
mPer.put("TipoS",rs.getString(1));
mPer.put("Nombre",rs.getString(2));
mPer.put("Apellido",rs.getString(3));
mPer.put("Motivo",rs.getString(4));
mPer.put("Fechai",rs.getString(5));
mPer.put("Fechaf",rs.getString(6));
mPer.put("Horai",rs.getString(7));
mPer.put("Horaf",rs.getString(8));
mPer.put("Codigo",rs.getString(9));
mPer.put("Validacion",rs.getString(10));
lPermiso.add(mPer);
}
ctms.close();
Mdesconecta();
return lPermiso;  
   

}

public List Historial_permisos_admin(Epermiso p) throws SQLException{
Mconecta();
List lPermiso =new ArrayList();
Map mPer = null;
CallableStatement ctms =cn.prepareCall("{call dbo.Historial_permisos_admin(?,?,?,?,?,?)}");
ctms.setString(1,p.getAnoi());
ctms.setString(2,p.getAnof());
ctms.setString(3,p.getMesi());
ctms.setString(4,p.getMesf());
ctms.setString(5,p.getDiai());
ctms.setString(6,p.getDiaf());

rs=ctms.executeQuery();
while(rs.next()){
mPer=new HashMap();
mPer.put("TipoS",rs.getString(1));
mPer.put("Nombre",rs.getString(2));
mPer.put("Apellido",rs.getString(3));
mPer.put("Motivo",rs.getString(4));
mPer.put("Fechai",rs.getString(5));
mPer.put("Fechaf",rs.getString(6));
mPer.put("Horai",rs.getString(7));
mPer.put("Horaf",rs.getString(8));
mPer.put("Codigo",rs.getString(9));
lPermiso.add(mPer);
}
ctms.close();
Mdesconecta();
return lPermiso; 


}

public List Permisos_validar() throws SQLException{
Mconecta();
List lPermiso =new ArrayList();
Map mPer = null;
CallableStatement ctms =cn.prepareCall("{call dbo.Permisos_no_validados(?)}");
ctms.setInt(1,1);
rs=ctms.executeQuery();
while(rs.next()){
mPer=new HashMap();
mPer.put("Tipo",rs.getString(1));
mPer.put("fechai",rs.getString(2));
mPer.put("fechaf",rs.getString(3));
mPer.put("horai",rs.getString(4));
mPer.put("horaf",rs.getString(5));
mPer.put("codigo",rs.getString(6));
mPer.put("Nombre",rs.getString(7));
mPer.put("Apellido",rs.getString(8));
mPer.put("Descripcion",rs.getString(9));
mPer.put("pkSalida",rs.getString(10));
lPermiso.add(mPer);
}
ctms.close();
Mdesconecta();
return lPermiso;
}

public int actualizar_permiso(int val,String cod,int pkSalida) throws SQLException{
int res = 0;
Mconecta();
CallableStatement ctms =cn.prepareCall("{call dbo.Validar_permiso_de_usu(?,?,?)}");
ctms.setInt(1,val);
ctms.setString(2,cod);
ctms.setInt(3,pkSalida);
ctms.execute();
res=1;
ctms.close();
Mdesconecta();
return res;
}
public int actualizar_credenciales(String cod,String clave) throws SQLException{
int res=0;
Mconecta();
CallableStatement ctms =cn.prepareCall("{call dbo.Actualizar_credenciales(?,?)}");
ctms.setString(1,cod);
ctms.setString(2,clave);
ctms.execute();
res=1;
ctms.close();
Mdesconecta();

return res;
}

}
