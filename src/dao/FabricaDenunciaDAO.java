package dao;

import java.util.List;

import model.Denuncia;
import model.DenunciaBlog;
import model.Utilizador;

public interface FabricaDenunciaDAO {
	//Denuncia denuncia;
	
	void criarDenuncia(int id, Denuncia denuncia, Utilizador utilizador);
	public List<Denuncia> listarDenuncia ();
	
	
}
