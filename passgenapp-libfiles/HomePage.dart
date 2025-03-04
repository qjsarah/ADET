import 'package:flutter/material.dart';
import 'Generator.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Generator', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 240, 174, 172))),
        backgroundColor: const Color.fromARGB(255, 197, 62, 62),
      ),
      body: const Material(
        child: Center(child: Column(
          children: <Widget>[
            Generator(),
          ],
        ),),
      ),
    );
  }
}