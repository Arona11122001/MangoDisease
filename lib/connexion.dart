import 'package:flutter/material.dart';
import 'EspaceAgriculteur.dart';
import 'EspacePhytopathologistePage.dart';

class ConnexionPage extends StatefulWidget {
  @override
  _ConnexionPageState createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String errorMessage = '';

  Widget buildElevatedButton(
      {required String text, required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 129, 241, 10), // Couleur verte claire
      ),
    );
  }

  void _handleLogin(BuildContext context) {
    String login = loginController.text;
    String password = passwordController.text;

    if (login == 'agriculteur' && password == 'motdepasse') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EspaceAgriculteurPage()),
      );
    } else if (login == 'phytopathologiste' && password == 'motdepasse') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EspacePhytopathologistePage()),
      );
    } else {
      setState(() {
        errorMessage = 'Identifiant ou mot de passe incorrect.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/avif.png'), // Remplacez par le chemin d'accès à votre image
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 50),
                _inputField("Login", Icons.person, loginController),
                SizedBox(height: 20),
                _inputField("Mot de passe", Icons.lock, passwordController,
                    isPassword: true),
                SizedBox(height: 50),
                buildElevatedButton(
                  text: 'Se connecter',
                  onPressed: () {
                    _handleLogin(context);
                  },
                ),
                SizedBox(height: 20),
                Text(
                  errorMessage,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _inputField(String hintText, IconData icon, TextEditingController controller,
      {bool isPassword = false}) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.white),
    );

    return TextField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: border,
        focusedBorder: border,
        prefixIcon: Icon(
          icon,
          color: Colors.black,
        ),
      ),
      obscureText: isPassword,
    );
  }
}
