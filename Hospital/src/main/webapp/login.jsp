<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">

    <div class="bg-white p-8 rounded-lg shadow-lg w-96">
        <h2 class="text-2xl font-bold text-center mb-4">Login</h2>
        
        <% 
    String error = request.getParameter("error");
        out.println("Error param: " + error);
    if (error != null) { 
%>
    <p style="color: red;">Email ou mot de passe incorrect.</p>
<% } %>

        <form action="login" method="post" class="space-y-4">
            <div>
                <label class="block">Email:</label>
                <input type="email" name="email" class="w-full p-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" required>
            </div>

            <div>
                <label class="block">Mot de Passe:</label>
                <input type="password" name="password" class="w-full p-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" required>
            </div>

            <button type="submit" class="w-full bg-blue-500 text-white p-2 rounded-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500">
                Se connecter
            </button>

            <p class="text-center mt-4">
                Pas encore inscrit ? <a href="registration.jsp" class="text-blue-600 hover:underline">S'inscrire</a>
            </p>
        </form>
    </div>

</body>
</html>
