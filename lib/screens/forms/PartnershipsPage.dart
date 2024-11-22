import 'package:flutter/material.dart';

class PartnershipsFormPage extends StatelessWidget {
  final TextEditingController _partnerNameController = TextEditingController();
  final TextEditingController _partnershipTypeController = TextEditingController();
  final TextEditingController _partnerContactController = TextEditingController();
  final TextEditingController _contractDetailsController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _partnershipStatusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/loogo.png', width: 80, height: 80),
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formulaire des Partenariats et Relations Externes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                _buildInputField(_partnerNameController, 'Nom du Partenaire'),
                SizedBox(height: 29),
                _buildInputField(_partnershipTypeController, 'Type de Partenariat'),
                SizedBox(height: 29),
                _buildInputField(_partnerContactController, 'Contact'),
                SizedBox(height: 29),
                _buildInputField(_contractDetailsController, 'Accord ou Contrat'),
                SizedBox(height: 29),
                _buildInputField(_startDateController, 'Date de Début'),
                SizedBox(height: 29),
                _buildInputField(_partnershipStatusController, 'Statut du Partenariat'),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    print('Formulaire des Partenariats et Relations Externes envoyé');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade600,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text('Soumettre', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.green.shade300),
        ),
      ),
    );
  }
}
