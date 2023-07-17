import 'package:flutter/material.dart';

class ConsulterHistoriquePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consulter l'historique"),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/avif.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: _buildHistoriqueItem(
                          'assets/mangue1.jpeg',
                          'alternariose',
                          'Caractérisée par des tâches foncées.',
                        ),
                      ),
                      Expanded(
                        child: _buildHistoriqueItem(
                          'assets/mangue3.jpeg',
                          'Botryodiplodia',
                          'Maladie grave qui affecte les manguiers.',
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: _buildHistoriqueItem(
                          'assets/mangue4.jpeg',
                          'Cephaleuros',
                          'Maladie mortelle.',
                        ),
                      ),
                      Expanded(
                        child: _buildHistoriqueItem(
                          'assets/mangue5.jpeg',
                          'Erythricium',
                          'La pink disease porte ce nom du fait de l\'apparition d\'une fine incrustation rugueuse de couleur rose.',
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

  Widget _buildHistoriqueItem(String imagePath, String maladie, String description) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maladie,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
