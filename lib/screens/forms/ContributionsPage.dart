import 'package:flutter/material.dart';

class MemberContributionsFormPage extends StatelessWidget {
  final TextEditingController _memberIdController = TextEditingController();
  final TextEditingController _contributionAmountController = TextEditingController();
  final TextEditingController _contributionDateController = TextEditingController();
  final TextEditingController _contributionTypeController = TextEditingController();
  final TextEditingController _statusController = TextEditingController();

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
              'Formulaire des Cotisations des Membres',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                _buildInputField(_memberIdController, 'ID Membre'),
                SizedBox(height: 29),
                _buildInputField(_contributionAmountController, 'Montant Cotisé'),
                SizedBox(height: 29),
                _buildInputField(_contributionDateController, 'Date de Cotisation'),
                SizedBox(height: 29),
                _buildInputField(_contributionTypeController, 'Type de Cotisation'),
                SizedBox(height: 29),
                _buildInputField(_statusController, 'Statut'),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    print('Formulaire des Cotisations des Membres envoyé');
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
