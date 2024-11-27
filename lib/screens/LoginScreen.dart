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
            const SizedBox(height: 80), // Espacement plus petit au-dessus du logo
            // Logo agrandi avec bordure arrondie pour un effet visuel moderne
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/loogo.png',
                height: MediaQuery.of(context).size.height * 0.25, // Taille du logo ajustée
              ),
            ),
            const SizedBox(height: 20), // Espacement sous le logo
            Text(
              'Connexion',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E8B57), // Vert feuille
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 2.0), // Position de l'ombre
                    blurRadius: 3.0,           // Flou de l'ombre
                    color: Colors.black.withOpacity(0.2), // Couleur de l'ombre avec opacité
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40), // Espacement avant les champs de texte
            // Champ de texte pour l'email avec effet visuel agréable
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Colors.green),
                hintText: 'Email',
                hintStyle: const TextStyle(
                  fontFamily: 'Alice',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                filled: true,
                fillColor: Colors.grey[200], // Fond léger pour les champs de texte
              ),
            ),
            const SizedBox(height: 20), // Espacement entre les champs de texte
            // Champ de texte pour le mot de passe
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: Colors.green),
                hintText: 'Password',
                hintStyle: const TextStyle(
                  fontFamily: 'Alice',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                filled: true,
                fillColor: Colors.grey[200], // Fond léger pour les champs de texte
              ),
            ),
            const SizedBox(height: 40), // Espacement plus petit avant le bouton
            // Bouton de connexion avec animation et ombre pour interactivité
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/welcome');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(210, 45, 152, 45), // Vert feuille
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                minimumSize: const Size(119, 50),
                elevation: 5, // Ajout d'ombre pour plus d'interactivité
              ),
              child: const Text(
                'Connexion',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15), // Réduire l'espace entre le bouton et le lien "Créer un compte"
            // Lien pour créer un compte avec couleur attrayante
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text(
                'Créer un compte',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 20,
                  color: Color.fromARGB(255, 25, 153, 25), // Vert feuille
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
