import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1, // Légère ombre pour l'AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo à gauche
            Image.asset(
              'assets/images/loogo.png',
              width: 120,
              fit: BoxFit.contain,
            ),
            // Profil à droite
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.green.shade400,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 28,
              ),
            ),
          ],
        ),
      ),
      body: Container(
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
        padding: const EdgeInsets.all(16),
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
                // Navigation logique
                _navigateToPage(context, index);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.circular(16),
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
                    // Icône
                    Icon(
                      _getIconForIndex(index),
                      size: 40,
                      color: Colors.white,
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
