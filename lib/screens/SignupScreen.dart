import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo agrandi sans espacement autour
              Image.asset(
                'assets/images/loogo.png', // Remplacez par le chemin de votre logo
                height: 250,
                fit: BoxFit.contain,
              ),

              const Text(
                'Crée ton compte',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF228B22), // Vert feuille
                ),
              ),
              const SizedBox(height: 10),

              _buildTextField(
                hintText: 'Nom complet',
                icon: Icons.person,
              ),
              _buildTextField(
                hintText: 'Adresse e-mail',
                icon: Icons.email,
              ),
              _buildTextField(
                hintText: 'Numéro de téléphone (facultatif)',
                icon: Icons.phone,
              ),
              _buildTextField(
                hintText: 'Mot de passe',
                icon: Icons.lock,
                obscureText: true,
              ),
              _buildTextField(
                hintText: 'Confirmer le mot de passe',
                icon: Icons.lock,
                obscureText: true,
              ),
              _buildTextField(
                hintText: 'Date de naissance (facultatif)',
                icon: Icons.calendar_today,
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action lors de l'inscription
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF228B22),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  elevation: 5,
                ),
                child: const Text(
                  'Créer un compte',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // "Retour à la connexion" button
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Navigates back to the previous screen
                },
                child: const Text(
                  'Déja un Compte',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF228B22),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String hintText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Alice',
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Colors.black12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(color: Color(0xFF228B22), width: 2),
          ),
          prefixIcon: Icon(icon, color: Color(0xFF228B22)),
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        ),
      ),
    );
  }
}
