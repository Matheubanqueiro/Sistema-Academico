package br.edu.javacode.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;

import br.edu.javacode.dao.AdminDAO;
import br.edu.javacode.util.ConnectionFactory;

@WebServlet("/ServletAdmin")
public class ServletAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        try {
            Connection conn = ConnectionFactory.getConnection();
            if (conn != null) {
                AdminDAO adminDAO = new AdminDAO();

                boolean credenciaisValidas = adminDAO.verificarCredenciais(login, senha);

                conn.close();

                if (credenciaisValidas) {
                    response.sendRedirect("html/admin.html"); 
                } else {
                	System.out.println("Errado");
                    response.sendRedirect("jsp/login.jsp"); 
                }
            } else {
                response.getWriter().println("Erro ao conectar ao banco de dados.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Erro: " + e.getMessage());
        } 
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
