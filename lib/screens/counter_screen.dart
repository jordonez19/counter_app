import 'dart:ffi';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key); 
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}
class _CounterScreenState extends State<CounterScreen> {
    int counter = 0;
 // key is to identified inside the context
  @override
  Widget build(Object context) {
    //arbol de widgets
    TextStyle font30 = const TextStyle(fontSize: 40);
    //TextStyle weight30 = const TextStyle(fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("COUNTER APP")), //
        elevation: 5, // shadow
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // align
          crossAxisAlignment: CrossAxisAlignment.center, // justify
          children: [
            Text('Número de Clicks', style: font30),
            Text("$counter", style: font30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          setState(() {
              counter++;
          });
          //print("hola $counter");
        },
        backgroundColor: const Color.fromARGB(255, 84, 166, 238),
        child: const Icon(Icons.add),
      ),
    );
  }
}







