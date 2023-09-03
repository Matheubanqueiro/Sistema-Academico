<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alterar | JAVA CODE</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link rel="icon" type="image/svg+xml" href="images/icon.svg">
   
</head>
<body class="bg-black text-white min-h-screen flex items-center justify-center">
    <div class="bg-gray-800 p-8 rounded-lg shadow-lg max-w-md w-full">
        <jsp:useBean id="aluno" scope="session" class="br.edu.unicid.model.Aluno" />
        <% SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy"); %>
        <form action="ServletAluno?cmd=atualizar" method="post">
        		<img class="mx-auto h-auto w-80 logo" src="images/logo.svg" alt="Logo" />
        
        <h2 class="text-2xl font-semibold text-center mb-6">Alterar dados do Aluno(a), <%=aluno.getNome()%></h2>
        
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
<button type="submit" value="Enviar" class="border border-green-500 hover:bg-green-600 text-white hover:text-white font-bold py-3 px-6 rounded-lg mr-2 w-1/2 w-full">
                    Enviar
                </button>            
                <a
			class="mt-4 flex justify-center border border-white hover:bg-white text-white hover:text-gray-900 font-bold py-3 px-6 rounded-lg flex items-center transition-transform transform hover:translate-y-1"
			onclick="window.location.href = 'html/alterar.html';">
			<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
				stroke="currentColor" class="w-5 h-5 mr-2 svg-rotate">
				<path stroke-linecap="round" stroke-linejoin="round"
					d="M16.023 9.348h4.992v-.001M2.985 19.644v-4.992m0 0h4.992m-4.993 0l3.181 3.183a8.25 8.25 0 0013.803-3.7M4.031 9.865a8.25 8.25 0 0113.803-3.7l3.181 3.182m0-4.991v4.99" />
			</svg>
			Alterar Alunos
		</a> 
		<a
					class="mt-4 border border-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-lg inline-flex items-center transition-transform transform hover:translate-y-1"
					href="html/admin.html">
					<svg xmlns="http://www.w3.org/2000/svg" fill="none"
						viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
						class="w-5 h-5 mr-2">
						<path stroke-linecap="round" stroke-linejoin="round"
							d="M15.75 19.5L8.25 12l7.5-7.5" />
					</svg>
					Sair
				</a>
                </div>
           		
        </form>
    </div>
</body>
</html>
	