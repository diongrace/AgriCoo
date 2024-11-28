class ApiEndpoint {
  // Adresse IP spécifique selon l'environnement (émulateur Android ou appareil réel)
  static const address = "10.0.2.2"; // Utilisez cette IP pour l'émulateur Android
  // Remplacez par votre IP locale si vous utilisez un appareil réel
  // static const address = "192.168.X.X";

  static const port = 8000; // Port utilisé par votre API Laravel (par défaut 8000)
  static const mainDomain = "http://$address:$port";

  // Endpoints spécifiques au projet Agricoo
  static const String agricooRegister = "$mainDomain/api/auth/agricoo/register";
  static const String agricooLogin = "$mainDomain/api/auth/agricoo/login";
  static const String agricooPasswordForgot = "$mainDomain/api/auth/agricoo/forgot-password";
  static const String agricooPasswordReset = "$mainDomain/api/auth/agricoo/reset-password";

  // Endpoint utilisateur Agricoo (optionnel)
  static const String agricooUserProfile = "$mainDomain/api/auth/agricoo/profile";

}
