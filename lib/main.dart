import 'package:flutter/material.dart';
import 'acceuil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          0xFFC2E0C1,
          <int, Color>{
            50: Color.fromRGBO(6, 193, 6, 1), // Remplacez par vos valeurs de couleur personnalisées
            100: Color(0xFFC2E0C1),
            200: Color.fromRGBO(155, 204, 160, 1),
            300: Color(0xFFE1EFE3),
            400: Color.fromARGB(158, 76, 179, 93),
            500: Color.fromRGBO(36, 157, 61, 1),
            600: Color.fromRGBO(29, 122, 50, 1),
            700: Color.fromRGBO(2, 146, 33, 0.535),
            800: Color.fromRGBO(14, 67, 30, 0.416),
            900: Color.fromARGB(152, 81, 184, 117),
          },
        ),
      ),
      home: AcceuilPage(),
    );
  }
}
