<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | JAVA CODE</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-900 h-screen flex items-center justify-center">

    <div class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
        <h2 class="text-2xl font-semibold text-center mb-6">Login</h2>
        
        <form action="../ServletAdmin" method="post">

            <div class="mb-4">
                <label class="block text-gray-600">Login</label>
                <input type="text" name="login" class="w-full px-4 py-2 bg-gray-200 border rounded-lg" placeholder="Seu login" required/>
            </div>
            
            <div class="mb-6">
                <label class="block text-gray-600">Senha</label>
                <input type="password" name="senha" class="w-full px-4 py-2 bg-gray-200 border rounded-lg" placeholder="Sua senha"required/>
            </div>
            
            <div class="flex items-center justify-between">
                <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline-blue active:bg-blue-700">
                    Entrar
                </button>
            </div>
        </form>
    </div>

</body>
</html>
