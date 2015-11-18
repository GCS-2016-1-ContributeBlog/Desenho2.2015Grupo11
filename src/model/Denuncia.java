package model;

import java.util.Date;

public class Denuncia {
	private int idDenuncia;
	private Date dataDenuncia;
	private String conteudoDenuncia;
	
	public Denuncia(){
		
	}
	
	public Denuncia(int idDenuncia, Date dataDenuncia, String conteudoDenuncia){
		this.idDenuncia = idDenuncia;
		this.dataDenuncia = dataDenuncia;
		this.conteudoDenuncia = conteudoDenuncia;
		
	}
	
	public int getIdDenuncia() {
		return idDenuncia;
	}
	public void setIdDenuncia(int idDenuncia) {
		this.idDenuncia = idDenuncia;
	}
	public Date getDataDenuncia() {
		return dataDenuncia;
	}
	public void setDataDenuncia(Date dataDenuncia) {
		this.dataDenuncia = dataDenuncia;
	}
	public String getConteudoDenuncia() {
		return conteudoDenuncia;
	}
	public void setConteudoDenuncia(String conteudoDenuncia) {
		this.conteudoDenuncia = conteudoDenuncia;
	}
	
}
