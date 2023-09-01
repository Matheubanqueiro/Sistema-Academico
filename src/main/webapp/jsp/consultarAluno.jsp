<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema Acadêmico</title>
<body>
    <h2 align="center">Consulta de Aluno</h2>
    <jsp:useBean id="aluno" scope="session" class="br.edu.unicid.model.Aluno" />
	<% SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy"); %>
    <form>
        <table>
            <tr>
                <td>RA:</td>
                <td>
                    <input type="text" maxlength="60"  size = "60" name="txtRa" 
                        value="<%=aluno.getRa()%>" readonly="readonly" />
                </td>
            </tr>
            <tr>
                <td>Nome:</td>
                <td>
                    <input type="text" maxlength="60"  size = "60" name="txtNome" 
                    value="<%=aluno.getNome()%>" readonly="readonly" />
                </td>
            </tr>
            <tr>
                <td>E-mail:</td>
                <td>
                    <input type="text" maxlength="60"  size = "60" name="txtEmail" 
						value="<%=aluno.getEmail()%>" readonly="readonly" />
                </td>
            </tr>
            <tr>
                <td>Nascimento (dd/mm/aaaa):</td>
                <td>
                    <input type="text" maxlength="60"  size = "60" name="txtData"
                        value="<%=data.format(aluno.getDataNascimento())%>" readonly="readonly" />
                </td>
            </tr>
            <tr>
                <td>Endereço:</td>
                <td>
                    <input type="text" maxlength="60"  size = "60" name="txtEndereco" 
						value="<%=aluno.getEndereco()%>" readonly="readonly" />
                </td>
            </tr>
            <tr>
                <td>Período:</td>
                <td>
                    <input type="text" maxlength="60"  size = "60" name="txtIdade" 
			value="<%=aluno.getPeriodo()%>" readonly="readonly" />
                </td>
            </tr>
			<tr>
				<td colspan="2" align="center"><a href="index.html">Página 
					Principal</a></td>
			</tr>             
         </table>
    </form>
</body>
</html>