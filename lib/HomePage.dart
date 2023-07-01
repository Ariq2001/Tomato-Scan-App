// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tomatoscan_app/MaturityPage.dart';
import 'package:tomatoscan_app/diseasePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 190, 30, 30),
        title: Text(widget.title),
      ),
      // body
      backgroundColor: Color.fromARGB(255, 253, 238, 211),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MaturityPage();
                }));
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
                    Text("Scan Kematangan", style: TextStyle(fontSize: 15.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DiseasePage();
                }));
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
                    Text("Scan Penyakit", style: TextStyle(fontSize: 15.0)),
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
