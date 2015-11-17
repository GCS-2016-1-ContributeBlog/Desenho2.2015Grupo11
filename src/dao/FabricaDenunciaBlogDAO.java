package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Date;

import model.Denuncia;
import model.DenunciaBlog;

public class FabricaDenunciaBlogDAO extends ConnectionFactory implements FabricaDenunciaDAO {
	
	Date agora = new Date();
	java.sql.Date sqlDate = new java.sql.Date(agora.getTime());
	
	public void criarDenuncia(int id, Denuncia denuncia){
		try{
			
			Connection conexao = getConexao();
			PreparedStatement pstm = conexao.
					prepareStatement("INSERT INTO Denuncia (dataDenuncia, conteudoDenuncia) VALUES (?,?)");
			pstm.setDate(1, sqlDate);
			pstm.setString(2, denuncia.getConteudoDenuncia());
			pstm.execute();
			pstm.close();
			conexao.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
}
