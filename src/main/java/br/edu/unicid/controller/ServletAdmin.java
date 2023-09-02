package br.edu.unicid.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.unicid.dao.AdminDAO;
import br.edu.unicid.model.Admin;



@WebServlet("/ServletAdmin")
public class ServletAdmin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AdminDAO dao;
    	try {
        	Admin admin= new Admin(null, null);

    		admin.setLogin(request.getParameter("login"));
			admin.setSenha(request.getParameter("senha"));

    	}
    	catch (Exception e) {
			System.out.println("Erro");
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
