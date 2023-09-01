<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema Acadêmico</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-black text-white min-h-screen flex items-center justify-center">
    <div class="bg-gray-800 p-8 rounded-lg shadow-lg max-w-md w-full">
        <h2 class="text-2xl font-semibold text-center mb-6">Atualização de Aluno</h2>
        <jsp:useBean id="aluno" scope="session" class="br.edu.unicid.model.Aluno" />
        <% SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy"); %>
        <form action="ServletAluno?cmd=atualizar" method="post">
            <div class="mb-4">
                <label for="txtRa" class="block text-gray-300">RA:</label>
                <input type="text" id="txtRa" name="txtRa" class="w-full px-4 py-2 border rounded-lg bg-gray-700 text-white" value="<%=aluno.getRa()%>" readonly="readonly">
            </div>
            <div class="mb-4">
                <label for="txtNome" class="block text-gray-300">Nome:</label>
                <input type="text" id="txtNome" name="txtNome" class="w-full px-4 py-2 border rounded-lg bg-gray-700 text-white" value="<%=aluno.getNome()%>">
            </div>
            <div class="mb-4">
                <label for="txtEmail" class="block text-gray-300">E-mail:</label>
                <input type="text" id="txtEmail" name="txtEmail" class="w-full px-4 py-2 border rounded-lg bg-gray-700 text-white" value="<%=aluno.getEmail()%>">
            </div>
            <div class="mb-4">
                <label for="txtData" class="block text-gray-300">Nascimento (dd/mm/aaaa):</label>
                <input type="date" id="txtData" name="txtData" class="w-full px-4 py-2 border rounded-lg bg-gray-700 text-white" value="<%=aluno.getDataNascimento()%>">
            </div>
            <div class="mb-4">
                <label for="txtEndereco" class="block text-gray-300">Endereço:</label>
                <input type="text" id="txtEndereco" name="txtEndereco" class="w-full px-4 py-2 border rounded-lg bg-gray-700 text-white" value="<%=aluno.getEndereco()%>">
            </div>
            <div class="mb-4">
                <label for="cmbPeriodo" class="block text-gray-300">Período:</label>
                <select id="cmbPeriodo" name="cmbPeriodo" class="w-full px-4 py-2 border rounded-lg bg-gray-700 text-white">
                    <option><%=aluno.getPeriodo()%></option>
                    <option>Manhã</option>
                    <option>Tarde</option>
                    <option>Noite</option>
                </select>
            </div>
            <div class="text-center">
                <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded-md transition duration-300 ease-in-out transform hover:scale-105">Confirmar Alteração</button>
            </div>
            <div class="mt-4 text-center">
                <a href="index.html" class="text-blue-500 hover:underline">Página Principal</a>
            </div>
        </form>
    </div>
</body>
</html>
	