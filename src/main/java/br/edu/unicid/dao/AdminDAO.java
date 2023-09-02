package br.edu.unicid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.edu.unicid.model.Admin;
import br.edu.unicid.util.ConnectionFactory;

public class AdminDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private Admin admin;

	public AdminDAO() throws Exception {
		// chama a classe ConnectionFactory e estabele uma conex�o
		try {
			this.conn = ConnectionFactory.getConnection();
		} catch (Exception e) {
			throw new Exception("erro: \n" + e.getMessage());
		}
	}
	public boolean verificarCredenciais(String login, String senha) throws Exception {
	    if (login == null || senha == null) {
	        return false; // Login ou senha em branco, não é possível autenticar
	    }
	    
	    try {
	        String SQL = "SELECT COUNT(*) AS count FROM admin WHERE login = ? AND senha = ?";
	        ps = conn.prepareStatement(SQL);
	        ps.setString(1, login);
	        ps.setString(2, senha);
	        rs = ps.executeQuery();
	        
	        if (rs.next()) {
	            int count = rs.getInt("count");
	            return count == 1; // Se houver uma correspondência, as credenciais são válidas
	        }
	        
	        return false; // Se não houver correspondência, as credenciais são inválidas
	    } catch (SQLException sqle) {
	        throw new Exception("Erro ao verificar credenciais: " + sqle);
	    } finally {
	        ConnectionFactory.closeConnection(conn, ps, rs);
	    }
	}

}