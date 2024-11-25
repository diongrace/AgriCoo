import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Aligner vers le haut pour rapprocher le contenu
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100), // Ajouter un espace au-dessus du logo pour le faire descendre
            // Logo agrandi avec bordure arrondie pour un effet visuel moderne
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/loogo.png',
                height: MediaQuery.of(context).size.height * 0.25, // Diminuer légèrement la taille du logo
              ),
            ),
            const SizedBox(height: 1), // Espacement sous le logo
            const Text(
              'Connexion',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 28,
                color: Color(0xFF228B22), // Vert feuille
              ),
            ),
            const SizedBox(height: 30), // Espacement avant les champs de texte
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: const TextStyle(
                  fontFamily: 'Alice',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            const SizedBox(height: 15), // Espacement entre les champs de texte
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(
                  fontFamily: 'Alice',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            const SizedBox(height: 30), // Espacement plus petit avant le bouton
            ElevatedButton(
              onPressed: () {
                // Rediriger vers le DashboardScreen après la connexion réussie
                Navigator.pushReplacementNamed(context, '/welcome');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(210, 45, 152, 45), // Vert feuille
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                minimumSize: const Size(119, 50),
              ),
              child: const Text('Connexion'),
            ),
            const SizedBox(height: 10), // Réduire l'espace entre le bouton et le lien "Créer un compte"
            TextButton(
              onPressed: () {
                // Navigation vers l'écran d'inscription
                Navigator.pushNamed(context, '/signup'); // Assurez-vous que '/signup' est défini dans vos routes
              },
              child: const Text(
                'Créer un compte',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 22,
                  color: Color.fromARGB(255, 25, 153, 25), // Vert feuille
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
