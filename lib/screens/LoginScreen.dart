import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/loogo.png', // Remplacez par le chemin de votre logo
              height: 100,
            ),
            const SizedBox(height: 10),
            const Text(
              'Connexion',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 28,
                color: Color(0xFF228B22), // Vert feuille
              ),
            ),
            const SizedBox(height: 40),
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
            const SizedBox(height: 20),
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
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigation vers l'écran suivant
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF228B22), // Vert feuille
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                minimumSize: const Size(119, 50),
              ),
              child: const Text('Connexion'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Navigation vers l'écran d'inscription
                Navigator.pushNamed(context, '/signup'); // Assurez-vous que '/signup' est défini dans vos routes
              },
              child: const Text(
                'Créer un compte',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 16,
                  color: Color(0xFF228B22), // Vert feuille
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
