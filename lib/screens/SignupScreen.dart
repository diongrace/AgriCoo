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
            mainAxisAlignment: MainAxisAlignment.start, // Alignement des éléments vers le haut
            children: [
              // Logo directement au-dessus du titre, sans espace
              Image.asset(
                'assets/images/loogo.png', // Remplacez par le chemin de votre logo
                height: 100,
              ),
              const Text(
                'Crée ton compte',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 28,
                  color: Color(0xFF228B22), // Vert feuille
                ),
              ),
              const SizedBox(height: 20), // Espacement avant les champs d'entrée
              
              // Champ pour le nom complet
              Padding(
                padding: const EdgeInsets.only(bottom: 29),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nom complet',
                    hintStyle: const TextStyle(
                      fontFamily: 'Alice',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                  ),
                ),
              ),
              // Champ pour l'adresse e-mail
              Padding(
                padding: const EdgeInsets.only(bottom: 29),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Adresse e-mail',
                    hintStyle: const TextStyle(
                      fontFamily: 'Alice',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(Icons.email, color: Colors.black),
                  ),
                ),
              ),
              // Champ pour le numéro de téléphone (facultatif)
              Padding(
                padding: const EdgeInsets.only(bottom: 29),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Numéro de téléphone (facultatif)',
                    hintStyle: const TextStyle(
                      fontFamily: 'Alice',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(Icons.phone, color: Colors.black),
                  ),
                ),
              ),
              // Champ pour le mot de passe
              Padding(
                padding: const EdgeInsets.only(bottom: 29),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    hintStyle: const TextStyle(
                      fontFamily: 'Alice',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(Icons.lock, color: Colors.black),
                  ),
                ),
              ),
              // Champ pour confirmer le mot de passe
              Padding(
                padding: const EdgeInsets.only(bottom: 29),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirmer le mot de passe',
                    hintStyle: const TextStyle(
                      fontFamily: 'Alice',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(Icons.lock, color: Colors.black),
                  ),
                ),
              ),
              // Champ pour la date de naissance (facultatif)
              Padding(
                padding: const EdgeInsets.only(bottom: 29),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Date de naissance (facultatif)',
                    hintStyle: const TextStyle(
                      fontFamily: 'Alice',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(Icons.calendar_today, color: Colors.black),
                  ),
                ),
              ),
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
                ),
                child: const Text('Créer un compte'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
