import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Importez FontAwesome
import 'forms/AgriculturalProductsPage.dart';
import 'forms/ContributionsPage.dart';
import 'forms/FinancialTransactionsPage.dart';
import 'forms/LoansAndFundingPage.dart';
import 'forms/MeetingsAndEventsPage.dart';
import 'forms/MembersPage.dart';
import 'forms/PartnershipsPage.dart';
import 'forms/ProductivityReportsPage.dart';
import 'forms/StocksAndInventoriesPage.dart';
import 'forms/WeatherForecastsPage.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.white, // Fond blanc pour l'AppBar
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espace entre les éléments (logo à gauche, icône à droite)
    children: [
      // Logo à gauche
      Padding(
        padding: const EdgeInsets.only(left: 2), // Ajouter un peu d'espace à gauche pour le logo
        child: Image.asset(
          'assets/images/loogo.png',
          width: 160,  // Largeur du logo
   
       height: 250, // Hauteur du logo
        ),
      ),
      // Icône profil à droite
      Padding(
        padding: const EdgeInsets.only(right: 10), // Ajouter un peu d'espace à droite
  
      child: Container(
          width: 50,  // Taille de l'icône de profil
          height: 50,
          decoration: BoxDecoration(
            color: Colors.green.shade600, // Couleur de fond de l'icône
            shape: BoxShape.circle, // Forme circulaire
          ),
          child: const Icon(
            Icons.person,
            size: 35,  // Taille de l'icône
            color: Colors.white,
          ),
        ),
      ),
    ],
  ),
),

      body: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.green.shade50, // Fond vert très clair pour la page
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16, // Espacement horizontal entre les cartes
            mainAxisSpacing: 16,  // Espacement vertical entre les cartes
            childAspectRatio: 1.4, // Ajuste la taille pour des cartes plus petites et modernes
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Naviguer vers la page correspondante selon l'index
                _navigateToPage(context, index);
              },
              child: Card(
                elevation: 6, // Ombre plus légère pour un effet subtil
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16), // Coins arrondis
                ),
                color: Colors.green.shade400, // Carte en vert plus foncé
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Icône selon la page
                    Icon(
                      _getIconForIndex(index),
                      size: 48, // Icône plus grande pour une meilleure visibilité
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    // Titre
                    Text(
                      _getTitleForIndex(index),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white, // Texte en blanc pour contraster avec le fond vert
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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MembersFormPage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AgriculturalProductsFormPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FinancialTransactionsFormPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InventoryFormPage()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MemberContributionsFormPage()),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductivityReportsFormPage()),
        );
        break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoansAndFundingFormPage()),
        );
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MeetingsAndEventsFormPage()),
        );
        break;
      case 8:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WeatherForecastsFormPage()),
        );
        break;
      case 9:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PartnershipsFormPage()),
        );
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
      case 0: return FontAwesomeIcons.users; // Icône des membres
      case 1: return FontAwesomeIcons.truck; // Icône des produits agricoles
      case 2: return FontAwesomeIcons.creditCard; // Icône des transactions financières
      case 3: return FontAwesomeIcons.archive; // Icône des stocks
      case 4: return FontAwesomeIcons.userCheck; // Icône des cotisations
      case 5: return FontAwesomeIcons.chartBar; // Icône des rapports
      case 6: return FontAwesomeIcons.dollarSign; // Icône des prêts et financements
      case 7: return FontAwesomeIcons.calendarAlt; // Icône des réunions et événements
      case 8: return FontAwesomeIcons.sun; // Icône des prévisions météorologiques
      case 9: return FontAwesomeIcons.link; // Icône des partenariats
      default: return Icons.help_outline; // Icône par défaut
    }
  }
}
