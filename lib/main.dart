import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 30, 30, 40),
        margin: EdgeInsets.all(30),
        color: Colors.grey[400],
        child: Text('Hello'),
      ),
      floatingActionButton: getFloatingActionButton()
    );
  } 
}

ElevatedButton getElevatedButton() {
  return ElevatedButton.icon(
          icon: const Icon(Icons.alternate_email),
          onPressed: () {
            print('You clicked me');
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
          ), 
          label: const Text('Email me'),
  );
}

FloatingActionButton getFloatingActionButton() {
  return FloatingActionButton(
        onPressed: foo, 
        backgroundColor: Colors.red[600],
        child: const Text('clic'),
      );
}

int foo() {
  return 1;
}