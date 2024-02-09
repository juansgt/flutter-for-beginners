import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class  Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: const Center(
        child: Icon(
          Icons.airport_shuttle,
          color: Colors.lightBlue,
          size: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: foo, 
        backgroundColor: Colors.red[600],
        child: const Text('clic'),
      ),
    );
  } 
}

int foo() {
  return 1;
}