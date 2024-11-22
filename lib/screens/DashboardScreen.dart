import 'package:flutter/material.dart';
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
        backgroundColor: Colors.white, // Fond blanc de l'AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo à gauche
            Image.asset(
              'assets/images/loogo.png',
              width: 80,  // Taille du logo
              height: 80, // Taille du logo
            ),
            // Icône profil à droite
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person,
                size: 32,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Deux colonnes pour aligner les 10 carrés
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1, // Assurer que chaque carré soit carré
        ),
        itemCount: 10, // Nombre de carrés à afficher
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Rediriger vers la page correspondante selon l'index
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
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green.shade300, // Carré vert
                borderRadius: BorderRadius.circular(8), // Coins arrondis
              ),
              child: Center(
                child: Text(
                  _getTitleForIndex(index),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18, // Taille du texte dans les carrés
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Fonction pour récupérer le titre selon l'index
  String _getTitleForIndex(int index) {
    switch (index) {
      case 0:
        return 'Membres';
      case 1:
        return 'Produits';
      case 2:
        return 'Transactions';
      case 3:
        return 'Stocks';
      case 4:
        return 'Cotisations';
      case 5:
        return 'Rapports';
      case 6:
        return 'Prêts';
      case 7:
        return 'Réunions';
      case 8:
        return 'Météo';
      case 9:
        return 'Partenariats';
      default:
        return '';
    }
  }
}
