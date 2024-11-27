import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    // Création du contrôleur d'animation pour gérer le délai
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Animation d'agrandissement du logo et du texte
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Animation de fondu (opacity) pour une transition douce
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    // Démarre l'animation
    _controller.forward();

    // Naviguer vers la page suivante après 3 secondes
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login'); // Modifiez la route si nécessaire
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // Dégradé de fond inspiré des couleurs naturelles
          gradient: LinearGradient(
            colors: [
              Color(0xFF6DBE45), // Vert clair
              Color(0xFF88C1A4), // Vert doux
              Color(0xFF75B3A2), // Vert forêt
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Animation du texte avec fondu et agrandissement
              FadeTransition(
                opacity: _fadeAnimation,
                child: AnimatedBuilder(
                  animation: _scaleAnimation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _scaleAnimation.value,
                      child: Text(
                        'Welcome',  // Texte du titre
                        style: TextStyle(
                          fontFamily: 'RobotoMono',  // Police moderne
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E8B57),  // Vert forêt
                          shadows: [
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 3.0,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              
              const SizedBox(height: 20),  // Un petit espace entre le texte et le logo

              // Animation du logo avec fondu et agrandissement
              FadeTransition(
                opacity: _fadeAnimation,
                child: AnimatedBuilder(
                  animation: _scaleAnimation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _scaleAnimation.value,
                      child: Image.asset(
                        'assets/images/loogo.png', // Assurez-vous que le chemin du logo est correct
                        height: 250,  // Taille du logo
                        width: 250,
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),  // Un petit espace entre le logo et l'icône de chargement

              // Icône de chargement animée (rotation fluide avec mise à l'échelle)
              FadeTransition(
                opacity: _fadeAnimation,
                child: AnimatedBuilder(
                  animation: _scaleAnimation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _scaleAnimation.value,
                      child: Transform.rotate(
                        angle: _controller.value * 2.0 * 3.1415927, // Rotation continue
                        child: Image.asset(
                          'assets/images/load.png',  // Icône de chargement à animer
                          height: 100,
                          width: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
