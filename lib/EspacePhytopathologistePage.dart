import 'package:flutter/material.dart';
import 'Sidebar.dart';

class EspacePhytopathologistePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Espace Phytopathologiste'),
      ),
      drawer: Sidebar(),
      body: Container(
        child: Center(
          child: Text('Page de l\'espace Phytopathologiste'),
        ),
      ),
    );
  }
}
