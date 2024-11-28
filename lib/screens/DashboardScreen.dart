import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160), // Taille de l'AppBar, augmentée pour mieux voir l'arc
        child: ClipPath(
          clipper: ArcClipper(),
          child: Container(
            color: Colors.green.shade600, // Couleur de l'AppBar
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Logo à gauche
                    Container(
                      height: screenHeight * 0.08,
                      width: screenHeight * 0.08,
                      child: Image.asset(
                        'assets/images/loogo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    // Profil à droite
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.person,
                          color: Colors.green,
                          size: 26,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green.shade100,
              Colors.green.shade50,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.2,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _navigateToPage(context, index);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.shade300.withOpacity(0.6),
                      blurRadius: 8,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icône dans un cercle
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        _getIconForIndex(index),
                        size: 30,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Titre
                    Text(
                      _getTitleForIndex(index),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // Fonction pour naviguer vers la page
  void _navigateToPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/members');
        break;
      case 1:
        Navigator.pushNamed(context, '/products');
        break;
      case 2:
        Navigator.pushNamed(context, '/transactions');
        break;
      case 3:
        Navigator.pushNamed(context, '/stocks');
        break;
      case 4:
        Navigator.pushNamed(context, '/contributions');
        break;
      case 5:
        Navigator.pushNamed(context, '/reports');
        break;
      case 6:
        Navigator.pushNamed(context, '/loans');
        break;
      case 7:
        Navigator.pushNamed(context, '/meetings');
        break;
      case 8:
        Navigator.pushNamed(context, '/weather');
        break;
      case 9:
        Navigator.pushNamed(context, '/partnerships');
        break;
    }
  }

  // Récupérer le titre en fonction de l'index
  String _getTitleForIndex(int index) {
    switch (index) {
      case 0: return 'Membres';
      case 1: return 'Produits';
      case 2: return 'Transactions';
      case 3: return 'Stocks';
      case 4: return 'Cotisations';
      case 5: return 'Rapports';
      case 6: return 'Prêts';
      case 7: return 'Réunions';
      case 8: return 'Météo';
      case 9: return 'Partenariats';
      default: return '';
    }
  }

  // Récupérer l'icône en fonction de l'index
  IconData _getIconForIndex(int index) {
    switch (index) {
      case 0: return FontAwesomeIcons.users;
      case 1: return FontAwesomeIcons.seedling;
      case 2: return FontAwesomeIcons.creditCard;
      case 3: return FontAwesomeIcons.boxes;
      case 4: return FontAwesomeIcons.handshake;
      case 5: return FontAwesomeIcons.chartLine;
      case 6: return FontAwesomeIcons.handHoldingUsd;
      case 7: return FontAwesomeIcons.calendarCheck;
      case 8: return FontAwesomeIcons.cloudSun;
      case 9: return FontAwesomeIcons.briefcase;
      default: return Icons.help_outline;
    }
  }
}

// ArcClipper pour l'effet d'arc
class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0); // Début du path en haut à gauche
    path.lineTo(0, size.height - 30); // Descendre jusqu'à 30 pixels du bas
    path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 30); // Courbe d'arc
    path.lineTo(size.width, 0); // Arrivée en haut à droite
    path.close(); // Fermer le path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
