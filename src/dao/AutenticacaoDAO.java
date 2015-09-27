package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Utilizador;

public class AutenticacaoDAO extends ConnectionFactory{
	Utilizador utilizador = new Utilizador();
	
	public Utilizador autenticarUtilizador(String email, String senha){
		try{
			Connection conexao = getConexao();
			Statement stm = conexao.createStatement();
			ResultSet rs = stm.executeQuery("select * from Utilizador where email='" + email + "' and senha ='" + senha +"'");
			System.out.println("DAO TRY");
			while(rs.next()){
				System.out.println("DAO WHILE1");
				//Utilizador utilizador = new Utilizador();
				utilizador.setEmail(rs.getString("email"));
				utilizador.setSenha(rs.getString("senha"));
				System.out.println("DAO WHILE2");
			}
			rs.close();
			conexao.close();
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("EXCEPTION DAO");
		}
		
		return utilizador;
		
	}
}
