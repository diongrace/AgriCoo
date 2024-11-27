import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'DashboardScreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
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
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),

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

                      // Carousel
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

                      // Bouton
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

                // Logo MPN au-dessus du titre
                Positioned(
                  top: 0, // Logo placé tout en haut
                  left: screenWidth * 0.75, // Ajustez la position horizontale si nécessaire
                  child: Container(
                    height: 80, // Taille du logo
                    width: 80,  // Taille du logo
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'), // Mettez le chemin de votre logo ici
                        fit: BoxFit.contain, // Le logo s'adapte à la taille du container
                      ),
                    ),
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
