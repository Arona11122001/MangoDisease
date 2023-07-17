import 'package:flutter/material.dart';
import 'DiagnosticPage.dart';
import 'DiagnostiquerMaladiePage.dart';
import 'ConsulterHistoriquePage.dart';
class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/vertt3.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Diagnostiquer maladie'),
            onTap: () {
              // Ajoutez ici la logique pour gérer le diagnostique de maladie
               Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DiagnostiquerMaladiePage()),
                          );
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Consulter historique'),
            onTap: () {
              // Ajoutez ici la logique pour consulter l'historique
               Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ConsulterHistoriquePage()),
                          );
            },
          ),
          ListTile(
            leading: Icon(Icons.notification_important),
            title: Text('Recevoir message alerte'),
            onTap: () {
              // Ajoutez ici la logique pour recevoir des messages d'alerte
            },
          ),
        ],
      ),
    );
  }
}
