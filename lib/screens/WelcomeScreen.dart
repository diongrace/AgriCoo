import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'DashboardScreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtenir les dimensions de l'écran
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          // Décoration du fond avec un dégradé
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 222, 247, 221), // Vert clair
                Color.fromARGB(255, 255, 255, 255), // Blanc
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                // Logo positionné dans le coin supérieur droit avec un espace de 5 pixels
                Positioned(
                  top: -50, // Décalage de 5 pixels du haut
                  right: -60, // Décalage de 5 pixels de la droite
                  child: Container(
                    // Agrandir le logo
                    height: screenHeight * 0.20, // 20% de la hauteur de l'écran
                    width: screenHeight * 0.20, // Largeur égale à la hauteur pour maintenir les proportions
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/loogo.png'), // Chemin vers le logo
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),

                // Contenu principal (titre, carousel, slogan, bouton)
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Espace de 90 pixels pour ne pas chevaucher le logo
                      const SizedBox(height: 90), // Augmenter l'espace pour laisser de la place au logo

                      // Titre
                      const Text(
                        'Bienvenue à AgriCoo',
                        style: TextStyle(
                          fontFamily: 'RobotoMono',
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 76, 175, 80),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Carousel d'images
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: screenHeight * 0.45,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 4),
                              aspectRatio: 16 / 9,
                              viewportFraction: 1.0,
                            ),
                            items: [
                              'assets/images/main.png',
                              'assets/images/coop.png',
                              'assets/images/champ.png',
                            ].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                        width: 3,
                                      ),
                                    ),
                                    child: Image.asset(
                                      i,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Slogan avec une image et du texte
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: screenHeight * 0.08,
                            width: screenWidth * 0.15,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/pngtree.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Cultiver ',
                                    style: TextStyle(
                                      fontFamily: 'Gliker',
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'ensemble, réussir ensemble',
                                    style: TextStyle(
                                      fontFamily: 'Gliker',
                                      fontSize: 20,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 40),

                      // Bouton pour accéder au Dashboard
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DashboardScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 46, 125, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 15,
                          ),
                          elevation: 5,
                        ),
                        child: const Text(
                          'Aller au Dashboard',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
