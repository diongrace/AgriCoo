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
            // Logo circulaire avec ClipOval
            ClipOval(
              child: Image.asset(
                'assets/images/loogo.png',
                height: MediaQuery.of(context).size.height * 0.25, // Taille du logo ajustée
                width: MediaQuery.of(context).size.height * 0.25, // Assurez-vous que la largeur est égale à la hauteur pour un cercle parfait
                fit: BoxFit.cover, // Assurez-vous que l'image remplisse le cercle
              ),
            ),
            const SizedBox(height: 20), // Espacement sous le logo
            Text(
              'Connexion',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2E8B57), // Vert feuille
                shadows: [
                  Shadow(
                    offset: const Offset(2.0, 2.0), // Position de l'ombre
                    blurRadius: 3.0,           // Flou de l'ombre
                    color: Colors.black.withOpacity(0.2), // Couleur de l'ombre avec opacité
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40), // Espacement avant les champs de texte
            // Champ de texte pour l'email avec forme circulaire
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.green),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontFamily: 'Alice',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),
            const SizedBox(height: 20), // Espacement entre les champs de texte
            // Champ de texte pour le mot de passe avec forme circulaire
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.green),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontFamily: 'Alice',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
            ),
            const SizedBox(height: 40), // Espacement plus petit avant le bouton
            // Bouton de connexion circulaire
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/welcome');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(210, 45, 152, 45), // Vert feuille
                shape: const CircleBorder(), // Forme circulaire
                padding: const EdgeInsets.all(20), // Ajustez la taille du bouton
                elevation: 5, // Ajout d'ombre pour plus d'interactivité
              ),
              child: const Icon(
                Icons.login, // Utilisez une icône de connexion
                color: Colors.white,
                size: 30, // Ajustez la taille de l'icône pour un effet visuel équilibré
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

