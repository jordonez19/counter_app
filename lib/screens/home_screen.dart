import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key); // key is to identified inside the context

  @override
  Widget build(Object context) {
    int counter = 10;
    //arbol de widgets
    TextStyle font30 = const TextStyle(fontSize: 40);
    //TextStyle weight30 = const TextStyle(fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("HOME APP")), //
        elevation: 0, // shadow
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
          counter++;
          print("hola $counter");
        },
        backgroundColor: const Color.fromARGB(255, 84, 166, 238),
        child: const Icon(Icons.add),
      ),
    );
  }

  widget({required Row child}) {}
}
