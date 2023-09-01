package br.edu.exemplo.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.exemplo.dao.AlunoDAO;
import br.edu.exemplo.model.Aluno;

@WebServlet("/ServletAluno")
public class ServletAluno extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// metodo para conversao de String para data
	private Date strToDate(String data) throws Exception {
		if (data == null) {
			return null;
		}
		SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
		Date dataF = formato.parse(data);
		return dataF;
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		AlunoDAO dao;
		Aluno aluno = new Aluno();
		if (cmd != null) {
			try {
				aluno.setRa(Integer.parseInt(request.getParameter("ra")));
				aluno.setNome(request.getParameter("nome"));
				aluno.setEmail(request.getParameter("email"));
				aluno.setEndereco(request.getParameter("endereco"));
				aluno.setDataNascimento(strToDate(request.getParameter("data_nascimento")));
				aluno.setPeriodo(request.getParameter("periodo"));
			} catch (Exception ex) {
				ex.printStackTrace();
			}
			try {
				dao = new AlunoDAO();
				if (cmd.equalsIgnoreCase("incluir")) {
					dao.salvar(aluno);
				}
			} catch (Exception e) {
				e.printStackTrace();
				throw new ServletException(e);
			}
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
