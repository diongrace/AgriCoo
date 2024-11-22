import 'package:flutter/material.dart';

class WeatherForecastsFormPage extends StatelessWidget {
  final TextEditingController _forecastDateController = TextEditingController();
  final TextEditingController _temperatureController = TextEditingController();
  final TextEditingController _precipitationController = TextEditingController();
  final TextEditingController _weatherConditionsController = TextEditingController();
  final TextEditingController _memberRecommendationsController = TextEditingController();

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
            const Text(
              'Formulaire des Prévisions Météorologiques',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                _buildInputField(_forecastDateController, 'Date de Prévision'),
                const SizedBox(height: 29),
                _buildInputField(_temperatureController, 'Température Prévue'),
                const SizedBox(height: 29),
                _buildInputField(_precipitationController, 'Pluie/Précipitations'),
                const SizedBox(height: 29),
                _buildInputField(_weatherConditionsController, 'Conditions Climatiques'),
                const SizedBox(height: 29),
                _buildInputField(_memberRecommendationsController, 'Conseils pour les Membres'),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    print('Formulaire des Prévisions Météorologiques envoyé');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade600,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('Soumettre', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
        labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
