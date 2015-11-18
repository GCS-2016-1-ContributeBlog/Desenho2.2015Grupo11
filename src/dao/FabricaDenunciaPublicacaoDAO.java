package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.Denuncia;
import model.DenunciaBlog;
import model.DenunciaPublicacao;
import model.Utilizador;

public class FabricaDenunciaPublicacaoDAO extends ConnectionFactory implements FabricaDenunciaDAO {
	Date agora = new Date();
	java.sql.Date sqlDate = new java.sql.Date(agora.getTime());
	public void criarDenuncia(int id, Denuncia denuncia, Utilizador utilizador){
		try{
			
			Connection conexao = getConexao();
			PreparedStatement pstm = conexao.
					prepareStatement("INSERT INTO Denuncia (dataDenuncia, conteudoDenuncia, idPublicacao, idUtilizador) VALUES (?,?,?,?)");
			pstm.setDate(1, sqlDate);
			pstm.setString(2, denuncia.getConteudoDenuncia());
			pstm.setInt(3, id);
			pstm.setInt(4, utilizador.getId());
			pstm.execute();
			pstm.close();
			conexao.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public List<Denuncia> listarDenuncia() {
		List<Denuncia> lista = new ArrayList<>();
		try {
			Connection conexao = getConexao();
			Statement stm = conexao.createStatement();
			ResultSet rs = stm.executeQuery("Select * from Denuncia where idPublicacao IS NOT NULL");
			
			while (rs.next()) {
				Denuncia denunciaPublicacao = new DenunciaPublicacao();
				denunciaPublicacao.setIdDenuncia(rs.getInt("idDenuncia"));
				denunciaPublicacao.setConteudoDenuncia(rs.getString("conteudoDenuncia"));
				//blog.setDataCriacao(rs.getDate("dataCriacao"));
				lista.add(denunciaPublicacao);
			}
			stm.close();
			conexao.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	public void excluirDenuncia(String idDenuncia) {
		try {
			Connection conexao = getConexao();
			PreparedStatement pstm = conexao
					.prepareStatement("Delete from Denuncia where idDenuncia ="+idDenuncia);
		
			pstm.execute();
			pstm.close();
			conexao.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
