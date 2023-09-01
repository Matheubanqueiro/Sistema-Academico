<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.unicid.model.Aluno"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Lista de Alunos</title>
<link rel="icon" type="image/svg+xml" href="../images/icon.svg">
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
</head>

<body class="bg-black text-white font-sans">
	<div class="bg-gray-800 p-6 text-center">
		<h1 class="text-4xl font-semibold">Lista de Alunos</h1>
	</div>
	<div class="container mx-auto mt-8 p-8">
		<div class="bg-gray-800 shadow-lg rounded-lg overflow-x-auto">
			<table class="min-w-full divide-y divide-gray-500 text-gray-300">
				<thead class="bg-gray-700">
					<tr>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							RA</th>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							Nome</th>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							Endereço</th>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							E-mail</th>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							Nascimento</th>
						<th scope="col"
							class="px-6 py-3 text-left text-xs font-semibold uppercase tracking-wider">
							Período</th>
					</tr>
				</thead>
				<tbody>
					<%
					SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
					List<Aluno> lista = new ArrayList<Aluno>();
					lista = (ArrayList) request.getAttribute("alunosList");
					for (Aluno a : lista) {
					%>
					<tr>
						<td class="px-6 py-4 whitespace-nowrap"><%=a.getRa()%></td>
						<td class="px-6 py-4 whitespace-nowrap"><%=a.getNome()%></td>
						<td class="px-6 py-4 whitespace-nowrap"><%=a.getEndereco()%></td>
						<td class="px-6 py-4 whitespace-nowrap"><%=a.getEmail()%></td>
						<td class="px-6 py-4 whitespace-nowrap"><%=data.format(a.getDataNascimento())%></td>
						<td class="px-6 py-4 whitespace-nowrap"><%=a.getPeriodo()%></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
		<div class="flex items-center justify-center mt-8">

			<button
				class="border border-blue-500 hover:bg-blue-600 text-white hover:gray-900 font-bold py-3 px-6 rounded-lg flex items-center transition-transform transform hover:translate-y-1"
				onclick="window.location.href = 'html/admin.html';">
				<svg xmlns="http://www.w3.org/2000/svg" fill="none"
					viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
					class="w-5 h-5 mr-2">
      <path stroke-linecap="round" stroke-linejoin="round"
						d="M15.75 19.5L8.25 12l7.5-7.5" />
   </svg>
				Voltar
			</button>



		</div>
	</div>
</body>

</html>
