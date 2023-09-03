<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login | JavaCode Institute</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<link rel="icon" type="image/svg+xml" href="../images/icon.svg">
</head>
<body class="bg-black text-white flex items-center justify-center min-h-screen">
  <div class="fixed inset-0 z-0">
    <img class="w-full h-full object-cover opacity-25" src="../images/facu.jpg" alt="foto faculdade">
  </div>

  <div class="relative z-10  shadow-md rounded-lg max-w-md w-full p-8">
    <img class="mx-auto h-auto w-80 logo transform hover:scale-110 transition-transform" src="../images/logo.svg" alt="Logo">
    <h2 class="text-2xl font-semibold mb-6 text-gray-200">Login</h2>
    <form action="../ServletAdmin" method="post">
      <div class="mb-4 ">
        <label class="block text-gray-300">Login</label>
        <input type="text" name="login" class="w-full px-4 py-2 border rounded-lg bg-gray-700 text-white focus:outline-none focus:border-blue-500 hover:bg-gray-600" required />
      </div>
      <div class="mb-6 relative">
        <label class="block text-gray-300">Senha</label>
        <div class="relative">
          <input type="password" name="senha" id="password" class="w-full px-4 py-2 border rounded-lg bg-gray-700 text-white focus:outline-none focus:border-blue-500 hover:bg-gray-600" placeholder="Sua senha" required />
          <span id="togglePassword" class="absolute inset-y-0 right-0 flex items-center pr-3 cursor-pointer text-gray-300">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6 text-white">
              <path d="M12 15a3 3 0 100-6 3 3 0 000 6z" />
              <path fill-rule="evenodd" d="M1.323 11.447C2.811 6.976 7.028 3.75 12.001 3.75c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113-1.487 4.471-5.705 7.697-10.677 7.697-4.97 0-9.186-3.223-10.675-7.69a1.762 1.762 0 010-1.113zM17.25 12a5.25 5.25 0 11-10.5 0 5.25 5.25 0 0110.5 0z" clip-rule="evenodd" />
            </svg>
          </span>
        </div>
      </div>
      <div class="flex align-center flex-col">
        <button type="submit" value="Enviar" class="border border-green-500 hover:bg-green-600 text-white hover:text-white font-bold py-3 px-6 rounded-lg mr-2 w-1/2 w-full">
          Entrar
        </button>
      </div>
    </form>
  </div>
<script>
        const passwordField = document.getElementById("password");
        const togglePasswordButton = document.getElementById("togglePassword");
        let passwordVisible = false;
        togglePasswordButton.addEventListener("click", function () {
            passwordVisible = !passwordVisible;
            if (passwordVisible) {
                passwordField.type = "text";
                togglePasswordButton.innerHTML = `
                	 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6 text-white">
                    <path d="M3.53 2.47a.75.75 0 00-1.06 1.06l18 18a.75.75 0 101.06-1.06l-18-18zM22.676 12.553a11.249 11.249 0 01-2.631 4.31l-3.099-3.099a5.25 5.25 0 00-6.71-6.71L7.759 4.577a11.217 11.217 0 014.242-.827c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113z" />
                    <path d="M15.75 12c0 .18-.013.357-.037.53l-4.244-4.243A3.75 3.75 0 0115.75 12zM12.53 15.713l-4.243-4.244a3.75 3.75 0 004.243 4.243z" />
                    <path d="M6.75 12c0-.619.107-1.213.304-1.764l-3.1-3.1a11.25 11.25 0 00-2.63 4.31c-.12.362-.12.752 0 1.114 1.489 4.467 5.704 7.69 10.675 7.69 1.5 0 2.933-.294 4.242-.827l-2.477-2.477A5.25 5.25 0 016.75 12z" />
                </svg>
                `;
            } else {
                passwordField.type = "password";
                togglePasswordButton.innerHTML = `
                	 <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6 text-white">
              	  <path d="M12 15a3 3 0 100-6 3 3 0 000 6z" />
              	  <path fill-rule="evenodd" d="M1.323 11.447C2.811 6.976 7.028 3.75 12.001 3.75c4.97 0 9.185 3.223 10.675 7.69.12.362.12.752 0 1.113-1.487 4.471-5.705 7.697-10.677 7.697-4.97 0-9.186-3.223-10.675-7.69a1.762 1.762 0 010-1.113zM17.25 12a5.25 5.25 0 11-10.5 0 5.25 5.25 0 0110.5 0z" clip-rule="evenodd" />
              	</svg>
                `;
            }
        });
    </script>
</body>
</html>
