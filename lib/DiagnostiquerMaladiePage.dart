import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DiagnostiquerMaladiePage extends StatefulWidget {
  @override
  _DiagnostiquerMaladiePageState createState() =>
      _DiagnostiquerMaladiePageState();
}

class _DiagnostiquerMaladiePageState extends State<DiagnostiquerMaladiePage> {
  File? _image;
  final picker = ImagePicker();
  bool isProcessing = false;

  @override
  void initState() {
    super.initState();
  }

  Future scanLeaf() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.camera,
    );

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        _showDescription('Alternariose');
      } else {
        print('Aucune image sélectionnée.');
      }
    });
  }

  Future uploadImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        _showDescription('Alternariose');
      } else {
        print('Aucune image sélectionnée.');
      }
    });
  }

  void _showDescription(String maladie) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(maladie),
          content: Text(
            'Cette maladie se caractérise par des tâches foncées, comportant des anneaux concentriques, et s\'entourant finalement d\'un halo jaune.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Fermer'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diagnostiquer maladie'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/avif.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  '',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/vertfonce.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _image != null
                          ? Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: FileImage(_image!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              height: 200,
                              color: Colors.grey[300],
                              child: Icon(
                                Icons.photo,
                                size: 100,
                                color: Colors.grey[600],
                              ),
                            ),
                      ElevatedButton(
                        onPressed: scanLeaf,
                        child: Text('Scanner une feuille'),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: uploadImage,
                        child: Text('Importer une image'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
