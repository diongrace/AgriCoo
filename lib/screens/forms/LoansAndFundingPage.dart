import 'package:flutter/material.dart';

class LoansAndFundingFormPage extends StatelessWidget {
  final TextEditingController _loanIdController = TextEditingController();
  final TextEditingController _beneficiaryMemberController = TextEditingController();
  final TextEditingController _loanAmountController = TextEditingController();
  final TextEditingController _interestRateController = TextEditingController();
  final TextEditingController _loanDateController = TextEditingController();
  final TextEditingController _repaymentDateController = TextEditingController();
  final TextEditingController _loanStatusController = TextEditingController();

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
              'Formulaire des Prêts et Financement',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                _buildInputField(_loanIdController, 'ID Prêt'),
                SizedBox(height: 29),
                _buildInputField(_beneficiaryMemberController, 'Membre Bénéficiaire'),
                SizedBox(height: 29),
                _buildInputField(_loanAmountController, 'Montant du Prêt'),
                SizedBox(height: 29),
                _buildInputField(_interestRateController, 'Taux d\'Intérêt'),
                SizedBox(height: 29),
                _buildInputField(_loanDateController, 'Date du Prêt'),
                SizedBox(height: 29),
                _buildInputField(_repaymentDateController, 'Date de Remboursement'),
                SizedBox(height: 29),
                _buildInputField(_loanStatusController, 'Statut du Prêt'),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    print('Formulaire des Prêts et Financement envoyé');
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
