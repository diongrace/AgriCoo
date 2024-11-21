import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Centrer horizontalement
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 40,
                color: Color(0xFF228B22), // Vert feuille
              ),
            ),
            const SizedBox(height: 10), // Ajouter un espace entre le titre et le logo
            Image.asset(
              'assets/images/loogo.png', // Remplacez par le chemin de votre logo
              height:300, // Taille du logo ajustée pour plus de clarté
            ),
            const SizedBox(height: 10), // Ajouter un espace entre le logo et l'image de chargement
            Image.asset(
              'assets/images/load.png', // Remplacez par votre image de chargement
              height: 300, // Taille de l'image de chargement ajustée
            ),
          ],
        ),
      ),
    );
  }
}
