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
	
	
	public void criarBlog(Blog blog) {
		
		
		
		
		try {
			Connection conexao = getConexao();
			PreparedStatement pstm = conexao
					.prepareStatement("INSERT INTO Blog (titulo,categoria) VALUES(?,?);");
			pstm.setString(1, blog.getTitulo());
			pstm.setString(2, blog.getCategoria());
			pstm.execute();
			pstm.close();
			conexao.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
