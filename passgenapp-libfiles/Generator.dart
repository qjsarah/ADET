import 'package:flutter/material.dart';
import 'dart:math';
const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#%^&*';
class Generator extends StatefulWidget {
  const Generator({super.key});

  @override
  State<Generator> createState() => _GeneratorState();
}

class _GeneratorState extends State<Generator> {
  Random _rnd = Random();
  String password='Select Password Strength';
  void weak(){
    setState(() {
      password=passgen(8);
    });
  }
  void medium(){
    setState(() {
      password=passgen(15);
    });
  }
  void strong(){
    setState(() {
      password=passgen(25);
    });
  }
  String passgen(int length) => String.fromCharCodes(Iterable.generate(
length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Container (
            margin: const EdgeInsets.only(top: 50.0, bottom: 30.0),
            height: 90, width: 400.0, alignment: Alignment.center, decoration: BoxDecoration(color: Color.fromARGB(255, 240, 174, 172), borderRadius: BorderRadius.circular(20.0)),
            child: Center( child:
              Text('$password', style: TextStyle(color: Color.fromARGB(255, 197, 62, 62), fontWeight: FontWeight.bold, fontSize: 15.0))
      )),
      Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: weak, child: Text('Weak', style: TextStyle(color: Color.fromARGB(255, 197, 62, 62)),)),
                ElevatedButton(onPressed: medium, child: Text('Medium', style: TextStyle(color: Color.fromARGB(255, 197, 62, 62)))),
                ElevatedButton(onPressed: strong, child: Text('Strong', style: TextStyle(color: Color.fromARGB(255, 197, 62, 62)))),

              ],  
            )
],);
      
  }
}