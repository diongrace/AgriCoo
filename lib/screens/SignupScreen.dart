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
            mainAxisAlignment: MainAxisAlignment.start, // Assure que tout est collé en haut
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo agrandi sans espacement autour
              Image.asset(
                'assets/images/loogo.png', // Remplacez par le chemin de votre logo
                height: 250, // Hauteur du logo
                fit: BoxFit.contain, // Ajuste le logo à son conteneur
              ),
              
              // Titre collé immédiatement sous le logo
              const Text(
                'Crée ton compte',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF228B22), // Vert feuille
                ),
              ),
              
              // Espacement réduit avant les champs
              const SizedBox(height: 10), // Espacement réduit avant les champs

              // Champ pour le nom complet
              _buildTextField(
                hintText: 'Nom complet',
                icon: Icons.person,
              ),
              // Champ pour l'adresse e-mail
              _buildTextField(
                hintText: 'Adresse e-mail',
                icon: Icons.email,
              ),
              // Champ pour le numéro de téléphone (facultatif)
              _buildTextField(
                hintText: 'Numéro de téléphone (facultatif)',
                icon: Icons.phone,
              ),
              // Champ pour le mot de passe
              _buildTextField(
                hintText: 'Mot de passe',
                icon: Icons.lock,
                obscureText: true,
              ),
              // Champ pour confirmer le mot de passe
              _buildTextField(
                hintText: 'Confirmer le mot de passe',
                icon: Icons.lock,
                obscureText: true,
              ),
              // Champ pour la date de naissance (facultatif)
              _buildTextField(
                hintText: 'Date de naissance (facultatif)',
                icon: Icons.calendar_today,
              ),

              const SizedBox(height: 20), // Espacement réduit avant le bouton
              // Bouton pour créer un compte
              ElevatedButton(
                onPressed: () {
                  // Action lors de l'inscription
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF228B22), // Vert feuille
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
            ],
          ),
        ),
      ),
    );
  }

  // Fonction pour générer les champs de texte
  Widget _buildTextField({
    required String hintText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10), // Réduction de l'espacement entre les champs
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
