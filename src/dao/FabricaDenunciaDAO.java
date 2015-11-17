package dao;

import model.Denuncia;
import model.Utilizador;

public interface FabricaDenunciaDAO {
	//Denuncia denuncia;
	
	void criarDenuncia(int id, Denuncia denuncia, Utilizador utilizador);
	
	
}
