import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Game List"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => ListTile(
                  title: Text("Game ${index + 1}"),
                )),
      ),
    );
  }
}
