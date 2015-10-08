package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import model.Blog;
import model.Utilizador;

public class BlogDAO extends ConnectionFactory {
	
Blog blog = new Blog();
Date agora = new Date();
java.sql.Date sqlDate = new java.sql.Date(agora.getTime());
	
	public void criarBlog(Blog blog) {	
		try {
			Connection conexao = getConexao();
			PreparedStatement pstm = conexao
					.prepareStatement("INSERT INTO Blog (titulo,categoria, dataCriacao) VALUES(?,?,?);");
			pstm.setString(1, blog.getTitulo());
			pstm.setString(2, blog.getCategoria());
			pstm.setDate(3, sqlDate);
			pstm.execute();
			pstm.close();
			conexao.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<Blog> listarBlog() {
		List<Blog> lista = new ArrayList<>();
		try {
			Connection conexao = getConexao();
			Statement stm = conexao.createStatement();
			ResultSet rs = stm.executeQuery("Select * from Blog");
			
			while (rs.next()) {
				Blog blog = new Blog();
				blog.setIdBlog(rs.getInt("id"));
				blog.setTitulo(rs.getString("titulo"));
				blog.setCategoria(rs.getString("categoria"));
				blog.setDataCriacao(rs.getDate("dataCriacao"));
				lista.add(blog);
			}
			stm.close();
			conexao.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}

}
