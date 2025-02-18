import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  const CountPage({super.key});

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  int counter=0; 
  void _incrementCounter(){
    setState(() {
      counter++;
    });
  }
  void _resetCounter(){
    setState(() {
      counter=0;
  });
  }
  void _decrementCounter(){
    setState(() {
      counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "June's Counter Application",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("June's Counter Application", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, ),),
        ),
      body: Material(
        child: Center(
          child: Text('$counter',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold, color: Colors.black),),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter,
      backgroundColor: Colors.amber,
      shape: CircleBorder(),

      child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
      );
  }
}
