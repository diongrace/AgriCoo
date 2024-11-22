import 'package:flutter/material.dart';

class InventoryFormPage extends StatelessWidget {
  final TextEditingController _productIdController = TextEditingController();
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _quantityInStockController = TextEditingController();
  final TextEditingController _purchasePriceController = TextEditingController();
  final TextEditingController _receivedDateController = TextEditingController();
  final TextEditingController _supplierController = TextEditingController();
  final TextEditingController _expirationDateController = TextEditingController();

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
              'Formulaire des Stocks et Inventaires',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                _buildInputField(_productIdController, 'ID Produit'),
                SizedBox(height: 29),
                _buildInputField(_productNameController, 'Nom de l\'Article'),
                SizedBox(height: 29),
                _buildInputField(_quantityInStockController, 'Quantité en Stock'),
                SizedBox(height: 29),
                _buildInputField(_purchasePriceController, 'Prix d\'Achat'),
                SizedBox(height: 29),
                _buildInputField(_receivedDateController, 'Date de Réception'),
                SizedBox(height: 29),
                _buildInputField(_supplierController, 'Fournisseur'),
                SizedBox(height: 29),
                _buildInputField(_expirationDateController, 'Date de Péremption'),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    print('Formulaire des Stocks et Inventaires envoyé');
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
