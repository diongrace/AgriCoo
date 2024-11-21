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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/loogo.png', // Remplacez par le chemin de votre logo
                height: 100,
              ),
              const SizedBox(height: 5),
              const Text(
                'Crée ton compte',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 28,
                  color: Color(0xFF228B22), // Vert feuille
                ),
              ),
              const SizedBox(height: 20),
              ...List.generate(7, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 29),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Champ ${index + 1}',
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
                );
              }),
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
