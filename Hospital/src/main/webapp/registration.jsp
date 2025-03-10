<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription - MediCare</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">

    <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md">
        <h2 class="text-2xl font-bold text-center text-gray-800 mb-6">Inscription</h2>

        <form action="registration" method="post" class="space-y-4">
            <!-- Nom Complet -->
            <div>
                <label class="block text-gray-700 font-semibold">Nom Complet:</label>
                <input type="text" name="fullName" required
                    class="w-full p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>

            <!-- Email -->
            <div>
                <label class="block text-gray-700 font-semibold">Email:</label>
               
                     <input type="email" name="email" required pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                        class="w-full p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">

            </div>

            <!-- Mot de Passe -->
            <div>
                <label class="block text-gray-700 font-semibold">Mot de Passe:</label>
                <input type="password" name="password" required minlength="8"
                    class="w-full p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>

            <!-- Numéro de Téléphone -->
            <div>
                <label class="block text-gray-700 font-semibold">Numéro de Téléphone:</label>
              
                      <input type="tel" name="phoneNumber" required
                         class="w-full p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">

            </div>

            <!-- Rôle -->
            <div>
                <label class="block text-gray-700 font-semibold">Rôle:</label>
                <select name="role" id="role" onchange="toggleSpeciality()"
                    class="w-full p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                    <option value="PATIENT">PATIENT</option>
                    <option value="DOCTOR">DOCTOR</option>
                </select>
            </div>

            <!-- Spécialisation (caché par défaut) -->
            <div id="specialityField" class="hidden">
                <label class="block text-gray-700 font-semibold">Spécialisation:</label>
                <input type="text" name="speciality"
                    class="w-full p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            </div>

            <!-- Bouton d'inscription -->
            <div class="text-center">
                <button type="submit"
                    class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded-lg shadow-md transition duration-300">
                    S'inscrire
                </button>
            </div>
        </form>
    </div>

    <script>
        function toggleSpeciality() {
            var role = document.getElementById("role").value;
            var specialityField = document.getElementById("specialityField");
            specialityField.classList.toggle("hidden", role !== "DOCTOR");
        }
    </script>

</body>
</html>
