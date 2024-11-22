import 'package:flutter/material.dart';

class ProductivityReportsFormPage extends StatelessWidget {
  final TextEditingController _cropIdController = TextEditingController();
  final TextEditingController _cropNameController = TextEditingController();
  final TextEditingController _cultivatedAreaController = TextEditingController();
  final TextEditingController _harvestQuantityController = TextEditingController();
  final TextEditingController _harvestDateController = TextEditingController();
  final TextEditingController _weatherConditionsController = TextEditingController();
  final TextEditingController _responsibleMemberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo.png', width: 80, height: 80),
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
              'Formulaire des Rapports de Productivité',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                _buildInputField(_cropIdController, 'ID Culture'),
                SizedBox(height: 29),
                _buildInputField(_cropNameController, 'Nom de la Culture'),
                SizedBox(height: 29),
                _buildInputField(_cultivatedAreaController, 'Superficie Cultivée'),
                SizedBox(height: 29),
                _buildInputField(_harvestQuantityController, 'Quantité Récoltée'),
                SizedBox(height: 29),
                _buildInputField(_harvestDateController, 'Date de Récolte'),
                SizedBox(height: 29),
                _buildInputField(_weatherConditionsController, 'Conditions Climatiques'),
                SizedBox(height: 29),
                _buildInputField(_responsibleMemberController, 'Membre Responsable'),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    print('Formulaire des Rapports de Productivité envoyé');
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
