import 'package:flutter/material.dart';

class MembersFormPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _cultivationTypeController = TextEditingController();
  final TextEditingController _areaController = TextEditingController();
  final TextEditingController _joinDateController = TextEditingController();
  final TextEditingController _statusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 111, 26),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end, // Alignement de l'icone du profil à droite
          children: [
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
              ), // Icône profil
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Image en fond
          Positioned.fill(
            child: Image.asset(
              'assets/images/pngtree.png',  // Remplacez par le chemin de votre image
              fit: BoxFit.cover, // S'assure que l'image couvre tout l'écran
            ),
          ),
          // Le formulaire au-dessus de l'image
          SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Affichage du logo en haut, au-dessus du formulaire
                Image.asset(
                  'assets/images/loogo.png',
                  width: 120,  // Taille réduite du logo
                  height: 120, // Taille réduite du logo
                ),
                const SizedBox(height: 10),  // Augmentation de l'espace après le logo
                const Text(
                  'Membres de la Coopérative',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                // Réduction de la largeur du formulaire
                Container(
                  width: double.infinity, // Largeur maximale
                  constraints: const BoxConstraints(maxWidth: 400), // Limiter la largeur du formulaire
                  child: Column(
                    children: [
                      _buildInputField(_nameController, 'Nom du Membre'),
                      const SizedBox(height: 10), // Réduction de l'espace entre les champs
                      _buildInputField(_addressController, 'Adresse'),
                      const SizedBox(height: 10),
                      _buildInputField(_phoneController, 'Numéro de téléphone'),
                      const SizedBox(height: 10),
                      _buildInputField(_cultivationTypeController, 'Type de culture'),
                      const SizedBox(height: 10),
                      _buildInputField(_statusController, 'Statut'),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          // Soumettre le formulaire
                          print('Formulaire envoyé');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade600, // Bouton vert
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
        ],
      ),
    );
  }

  // Fonction pour construire un champ de saisie
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
          borderSide: BorderSide(color: Color.fromARGB(255, 6, 87, 10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Color.fromARGB(255, 143, 241, 149)),  // Couleur de la bordure lorsqu'un champ est sélectionné
        ),
      ),
    );
  }
}
