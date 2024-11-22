import 'package:flutter/material.dart';

class FinancialTransactionsFormPage extends StatelessWidget {
  final TextEditingController _transactionTypeController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _transactionDateController = TextEditingController();
  final TextEditingController _memberInvolvedController = TextEditingController();
  final TextEditingController _productConcernedController = TextEditingController();
  final TextEditingController _transactionStatusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 111, 26),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.person, size: 32, color: Colors.white),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Image en fond sous les champs du formulaire
          Positioned.fill(
            child: Image.asset(
              'assets/images/pngtree.png',  // Remplacez par le chemin de votre image
              fit: BoxFit.cover, // Image s'adapte à toute la surface
            ),
          ),
          // Formulaire avec un fond semi-transparent derrière les champs
          Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(  // Utiliser SingleChildScrollView pour le défilement
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo en haut, au-dessus du formulaire
                  Image.asset(
                    'assets/images/loogo.png',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 10), // Espace après le logo
                  const Text(
                    'Formulaire des Transactions Financières',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // Formulaire avec largeur limitée
                  Container(
                    width: double.infinity, // Largeur maximale
                    constraints: const BoxConstraints(maxWidth: 400), // Limitation de la largeur
                    child: Column(
                      children: [
                        // Suppression de l'input "ID Transaction"
                        const SizedBox(height: 10),
                        _buildInputField(_transactionTypeController, 'Type de Transaction'),
                        const SizedBox(height: 10),
                        _buildInputField(_amountController, 'Montant'),
                        const SizedBox(height: 10),
                        _buildInputField(_transactionDateController, 'Date de Transaction'),
                        const SizedBox(height: 10),
                        _buildInputField(_memberInvolvedController, 'Membre Impliqué'),
                        const SizedBox(height: 10),
                        _buildInputField(_productConcernedController, 'Produit Concerné'),
                        const SizedBox(height: 10),
                        _buildInputField(_transactionStatusController, 'Statut'),
                        const SizedBox(height: 50),
                        ElevatedButton(
                          onPressed: () {
                            // Soumettre le formulaire
                            print('Formulaire des Transactions Financières envoyé');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade600,
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Soumettre',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        filled: true,
        fillColor: Colors.white,  // Fond blanc sous les champs de texte
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.green.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.green.shade600),
        ),
      ),
    );
  }
}
