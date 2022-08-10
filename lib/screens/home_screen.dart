import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(key: key); // key is to identified inside the context

  @override
  Widget build(Object context) { //arbol de widgets 


    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello APP BAR"),
        elevation: 0,
      ),
      body: const Center(
        child: Text("'Home Screen'"),
      ),
    );
  }


}
