import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true); // Animation avec aller-retour

    _animation = Tween<double>(begin: 0.9, end: 1.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Navigation après un délai
    Future.delayed(const Duration(seconds: 3), () {
      // Remplacer l'écran actuel par LoginScreen
      Navigator.pushReplacementNamed(context, '/login');
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
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 40,
                color: Color(0xFF228B22),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/loogo.png',
              height: 340,
            ),
            const SizedBox(height: 20),
            ScaleTransition(
              scale: _animation,
              child: Image.asset(
                'assets/images/load.png',
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

