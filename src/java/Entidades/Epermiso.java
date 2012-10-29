/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

/**
 *
 * @author Jonathann
 */
public class Epermiso {
int pkSalida;
int fkTipo;
String fkPersona; 
String chrDescripcion; 
String dtmFechaIni; 

String dtmFechaFin; 
String dtmHoraIni; 
String dtmHoraFin;
 String anoi="";
  String anof="";
  String mesi="";
  String mesf="";
  String diai="";
  String diaf="";

    public int getPkSalida() {
        return pkSalida;
    }

    public void setPkSalida(int pkSalida) {
        this.pkSalida = pkSalida;
    }

    public int getFkTipo() {
        return fkTipo;
    }

    public void setFkTipo(int fkTipo) {
        this.fkTipo = fkTipo;
    }

    public String getFkPersona() {
        return fkPersona;
    }

    public void setFkPersona(String fkPersona) {
        this.fkPersona = fkPersona;
    }

    public String getChrDescripcion() {
        return chrDescripcion;
    }

    public void setChrDescripcion(String chrDescripcion) {
        this.chrDescripcion = chrDescripcion;
    }

    public String getDtmFechaIni() {
        return dtmFechaIni;
    }

    public void setDtmFechaIni(String dtmFechaIni) {
        this.dtmFechaIni = dtmFechaIni;
    }

    public String getmFechaFin() {
        return dtmFechaFin;
    }

    public void setmFechaFin(String dtmFechaFin) {
        this.dtmFechaFin = dtmFechaFin;
    }

    public String getDtmHoraIni() {
        return dtmHoraIni;
    }

    public void setDtmHoraIni(String dtmHoraIni) {
        this.dtmHoraIni = dtmHoraIni;
    }

    public String getDtmHoraFin() {
        return dtmHoraFin;
    }

    public void setDtmHoraFin(String dtmHoraFin) {
        this.dtmHoraFin = dtmHoraFin;
    }

    public String getDtmFechaFin() {
        return dtmFechaFin;
    }

    public void setDtmFechaFin(String dtmFechaFin) {
        this.dtmFechaFin = dtmFechaFin;
    }

    public String getAnoi() {
        return anoi;
    }

    public void setAnoi(String anoi) {
        this.anoi = anoi;
    }

    public String getAnof() {
        return anof;
    }

    public void setAnof(String anof) {
        this.anof = anof;
    }

    public String getMesi() {
        return mesi;
    }

    public void setMesi(String mesi) {
        this.mesi = mesi;
    }

    public String getMesf() {
        return mesf;
    }

    public void setMesf(String mesf) {
        this.mesf = mesf;
    }

    public String getDiai() {
        return diai;
    }

    public void setDiai(String diai) {
        this.diai = diai;
    }

    public String getDiaf() {
        return diaf;
    }

    public void setDiaf(String diaf) {
        this.diaf = diaf;
    }

}
