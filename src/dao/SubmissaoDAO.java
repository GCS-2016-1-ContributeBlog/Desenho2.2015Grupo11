package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import model.Blog;
import model.Publicacao;
import model.PublicacaoColaborativa;

public class SubmissaoDAO  extends ConnectionFactory{

	PublicacaoColaborativa publicacaoColaborativa = new PublicacaoColaborativa();
	Blog blog = new Blog();
	
	
	public void publicacaoColaborativa(int idBlog, PublicacaoColaborativa publicacaoColaborativa){
		try {
			Connection conexao = getConexao();
			PreparedStatement pstm = conexao.
					prepareStatement("INSERT INTO Publicacao (tituloPublicacao, categoriaPublicacao, "
							+ "conteudoPublicacao, idBlog, notaPublicacao, statusPublicacao) VALUES (?,?,?,?,0,false)");
			pstm.setString(1, publicacaoColaborativa.getTituloPublicacao());
			pstm.setString(2, publicacaoColaborativa.getCategoriaPublicacao());
			pstm.setString(3, publicacaoColaborativa.getConteudoPublicacao());
			pstm.setInt(4, idBlog);
			pstm.execute();
			pstm.close();
			conexao.close();
				
		} catch (Exception e) {
			System.out.println("Erro adicionar Publicação Colaborativa");
			e.printStackTrace();
		}
	}
	
	
	public List<PublicacaoColaborativa> listarColaboracaAprovar(int idBlog){
		List<PublicacaoColaborativa>  pubColaborativas= new ArrayList<>();
		System.out.println("Listar Colaboração");
		System.out.println(idBlog);
		try {
			Connection conexao = getConexao();
			Statement stm = conexao.createStatement();
			ResultSet rs = stm.executeQuery("Select * from Publicacao where statusPublicacao=0 and idBlog="+idBlog);
			while (rs.next()) {
				publicacaoColaborativa.setIdPublicacao(rs.getInt("idPublicacao"));
				publicacaoColaborativa.setTituloPublicacao(rs.getString("tituloPublicacao"));
				publicacaoColaborativa.setCategoriaPublicacao(rs.getString("categoriaPublicacao"));
				publicacaoColaborativa.setConteudoPublicacao(rs.getString("conteudoPublicacao"));
				pubColaborativas.add(publicacaoColaborativa);
			}
			stm.close();
			conexao.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Deu Erro lista colaborações para aprovar");
		}
		return pubColaborativas;
	}
	
	
	
	
	
}
