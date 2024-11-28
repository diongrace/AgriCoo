class User {
  final String nom_complet;
  final String email;
  final String telephone;
  final String password;
  final String passwordConfirmation; 
  final String date_naissance;

  // Constructeur de la classe User
  User({
    required this.nom_complet, 
    required this.email, 
    required this.telephone, 
    required this.password,
    required this.passwordConfirmation,
    required this.date_naissance,
  });

  // Méthode pour convertir l'utilisateur en JSON
  Map<String, dynamic> toJson() {
    return {
      'nom_complet': nom_complet,
      'email': email,
      'telephone': telephone,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'date_naissance': date_naissance,
    };
  }
}
