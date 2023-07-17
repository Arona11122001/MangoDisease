import 'package:flutter/material.dart';
import 'connexion.dart';

class AcceuilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Ajoutez ici la logique pour la recherche
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Se connecter'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ConnexionPage()),
                          );
                        },
                        child: Text('Se connecter'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Container(
                width: constraints.maxWidth,
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
                            'assets/plante5.jpeg',
                            width: constraints.maxWidth * 0.4,
                          ),
                          Image.asset(
                            'assets/plante7.jpg',
                            width: constraints.maxWidth * 0.4,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/plante8.webp',
                            width: constraints.maxWidth * 0.4,
                          ),
                          Image.asset(
                            'assets/plante9.png',
                            width: constraints.maxWidth * 0.4,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Bienvenue dans cette application de détection des maladies des mangues',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Changement de la couleur du texte en blanc
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/a1.jpeg',
                            width: constraints.maxWidth * 0.4,
                          ),
                          Image.asset(
                            'assets/a2.jpeg',
                            width: constraints.maxWidth * 0.4,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
