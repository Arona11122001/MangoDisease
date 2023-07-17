import 'package:flutter/material.dart';
import 'Sidebar.dart';

class EspaceAgriculteurPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Espace Agriculteur'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Ajoutez ici la logique pour la déconnexion
            },
          ),
        ],
      ),
      drawer: Sidebar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/vertfonce.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/plante4.jpeg',
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  Image.asset(
                    'assets/a3.jpeg',
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/a4.jpeg',
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  Image.asset(
                    'assets/a5.jpeg',
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
