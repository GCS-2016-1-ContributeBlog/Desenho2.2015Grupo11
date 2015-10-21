package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.swing.plaf.synth.SynthScrollBarUI;

import model.Blog;
import model.Publicacao;

public class PublicacaoDAO extends ConnectionFactory{

	Publicacao publicacao = new Publicacao();
	Blog blog = new Blog();
	
	
	public void criarPublicacao(Publicacao publicacao, Blog blog){
		try{
			Connection conexao = getConexao();
			PreparedStatement pstm = conexao.
					prepareStatement("INSERT INTO Publicacao (tituloPublicacao, categoriaPublicacao, "
							+ "conteudoPublicacao, idBlog) VALUES (?,?,?,?)");
			pstm.setString(1, publicacao.getTituloPublicacao());
			pstm.setString(2, publicacao.getCategoriaPublicacao());
			pstm.setString(3, publicacao.getConteudoPublicacao());
			pstm.setInt(4, blog.getIdBlog());
			pstm.execute();
			pstm.close();
			conexao.close();
			
		}catch(Exception e){
			System.out.println("EOQ2?");
			e.printStackTrace();
		}
		
	}
}
