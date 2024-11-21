import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtenir la taille de l'écran
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white, // Fond blanc
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Réduire le padding pour plus de réactivité
        child: SingleChildScrollView(  // Permet de défiler si le contenu dépasse l'écran
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Espacement pour descendre le logo et l'icône du profil un peu plus bas
              const SizedBox(height: 50), // Augmenter la hauteur pour faire descendre les éléments

              // Logo et icône de profil
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/loogo.png', // Remplacez par votre logo
                    height: screenWidth * 0.3, // Augmenter la taille du logo (par exemple, 0.3 pour l'agrandir)
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profil.png'), 
                    radius: 25,
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Titre "Bienvenue à Agricoo"
              const Text(
                'Bienvenue à Agricoo',
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 28,
                  color: Color(0xFF228B22), // Vert feuille
                ),
              ),
              const SizedBox(height: 30),

              // Carousel avec des images défilantes
              CarouselSlider(
                options: CarouselOptions(
                  height: screenHeight * 0.3, // Ajuster la hauteur du carousel en fonction de l'écran
                  enlargeCenterPage: true, // Zoom sur l'image centrale
                  autoPlay: true, // Permet de faire défiler les images automatiquement
                  aspectRatio: 16/9,
                ),
                items: [
                  'assets/images/main.png', // Remplacez par vos images
                  'assets/images/coop.png',
                  'assets/images/champ.png',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image.asset(
                        i,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),

              // Slogan avec image de fond à gauche
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight * 0.08, // Ajuster la hauteur de l'image de fond
                    width: screenWidth * 0.15, // Ajuster la largeur de l'image de fond
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/feuilles.png'), 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 0),
                  Flexible(  // Utiliser Flexible pour permettre au texte de s'ajuster
                    child: const Text(
                      'Cultiver ensemble, réussir ensemble',
                      style: TextStyle(
                        fontFamily: 'Gliker',
                        fontSize: 18, // Ajuster la taille de la police pour mieux l'adapter
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
