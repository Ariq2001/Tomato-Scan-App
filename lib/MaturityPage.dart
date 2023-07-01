import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MaturityPage extends StatefulWidget {
  @override
  State<MaturityPage> createState() => _MaturityPageState();
}

class _MaturityPageState extends State<MaturityPage> {
  File? image;
  Future getImageGalery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicked =
        await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {
      
    });
  }
  
  Future getImageCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicked =
        await picker.pickImage(source: ImageSource.camera);
    image = File(imagePicked!.path);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan Kematangan"),
      ),
      backgroundColor: Color.fromARGB(255, 253, 238, 211),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          image != null ? Image.file(image!) : Container(),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () async {
                await getImageGalery();
              },
              splashColor: Color.fromARGB(255, 243, 33, 33),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.camera,
                      size: 70,
                      color: Colors.amber,
                    ),
                    Text("Galeri", style: TextStyle(fontSize: 15.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () async {
                await getImageCamera();
              },
              splashColor: const Color.fromARGB(255, 243, 33, 33),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.camera,
                      size: 70,
                      color: Colors.amber,
                    ),
                    Text("Kamera", style: TextStyle(fontSize: 15.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
