import 'package:flutter/material.dart';
import 'screens/DashboardScreen.dart';
import 'screens/LoginScreen.dart';
import 'screens/SignupScreen.dart';
import 'screens/SplashScreen.dart';
import 'screens/WelcomeScreen.dart';
import 'screens/forms/AgriculturalProductsPage.dart';
import 'screens/forms/ContributionsPage.dart';
import 'screens/forms/FinancialTransactionsPage.dart';
import 'screens/forms/LoansAndFundingPage.dart';
import 'screens/forms/MeetingsAndEventsPage.dart';
import 'screens/forms/MembersPage.dart';
import 'screens/forms/PartnershipsPage.dart';
import 'screens/forms/ProductivityReportsPage.dart';
import 'screens/forms/StocksAndInventoriesPage.dart';
import 'screens/forms/WeatherForecastsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/welcome', // Changez cela selon la page d'accueil que vous souhaitez
      routes: {
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/members': (context) => MembersFormPage(), // Membres de la Coopérative
        '/products': (context) => AgriculturalProductsFormPage(), // Produits Agricoles
        '/transactions': (context) => FinancialTransactionsFormPage(), // Transactions Financières
        '/stocks': (context) => InventoryFormPage(), // Stocks et Inventaires
        '/contributions': (context) => MemberContributionsFormPage(), // Cotisations des Membres
        '/reports': (context) => ProductivityReportsFormPage(), // Rapports de Productivité
        '/loans': (context) => LoansAndFundingFormPage(), // Prêts et Financement
        '/meetings': (context) => MeetingsAndEventsFormPage(), // Réunions et Événements
        '/weather': (context) => WeatherForecastsFormPage(), // Prévisions Météorologiques
        '/partnerships': (context) => PartnershipsFormPage(), // Partenariats et Relations Externes
      },
    );
  }
}
