import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'DashboardScreen.dart';
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtenir la taille de l'écran
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          // Fond kaki clair
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 248, 248, 246), // Couleur de fond
          ),
          width: double.infinity, // Prend toute la largeur
          height: double.infinity, // Prend toute la hauteur
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 1),

                  // Logo et icône de profil
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Logo
                      Image.asset(
                        'assets/images/loogo.png',
                        width: screenWidth * 0.11,
                        height: screenWidth * 0.30, // Taille du logo ajustée
                      ),
                      // Icône utilisateur
                      Container(
                        width: screenWidth * 0.11,
                        height: screenWidth * 0.14,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 216, 73), // Fond vert clair
                          shape: BoxShape.circle, // Forme circulaire
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.person, // Icône utilisateur
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Titre "Bienvenue A AgriCoo"
                  const Center(
                    child: Text(
                      'Bienvenue A AgriCoo',
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 98, 190, 75),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Carousel
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
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
                          viewportFraction: 1.1,
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
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
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

                  // Slogan
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: 'ensemble, réussir ensemble',
                                style: TextStyle(
                                  fontFamily: 'Gliker',
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Ajouter un bouton pour naviguer vers la page Dashboard
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      // Rediriger vers la page Dashboard
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DashboardScreen()),
                      );
                    },
                    child: const Text('Aller au Dashboard'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Couleur de fond du bouton
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
