<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MediCare - Home</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

    <!-- Navbar -->
    <nav class="bg-blue-600 text-white p-4 shadow-md">
        <div class="container mx-auto flex justify-between items-center">
            <a href="index.jsp" class="text-2xl font-bold">MediCare</a>
            <ul class="flex space-x-6">
                <li><a href="index.jsp" class="hover:text-gray-300">Home</a></li>
                <li><a href="index.jsp" class="hover:text-gray-300">Contact Us</a></li>
                <li><a href="login.jsp" class="hover:text-gray-300">Sign In</a></li>
                <li><a href="registration.jsp" class="hover:text-gray-300">Sign Up</a></li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <header class="relative h-screen flex items-center justify-center bg-cover bg-center" 
            style="background-image: url('https://source.unsplash.com/1600x900/?hospital,health');">
        <div class="absolute inset-0 bg-black bg-opacity-50"></div>
        <div class="text-center text-white z-10 px-6">
            <h1 class="text-4xl font-bold mb-4">Welcome to MediCare</h1>
            <p class="text-lg mb-6">Sign up today and manage your medical appointments with ease.</p>
            <a href="registration.jsp" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-6 rounded-lg shadow-lg">
                Get Started
            </a>
        </div>
    </header>

    <!-- Footer -->
    <footer class="bg-blue-600 text-white text-center p-4 mt-8">
        <p>&copy; 2025 MediCare. All rights reserved.</p>
    </footer>

</body>
</html>


