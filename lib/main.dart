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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const Row(
            children: <Widget>[
              Text('Hello'),
              Text('World'),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.cyan,
            child: const Text('one'),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            color: Colors.pinkAccent,
            child: const Text('two'),
          ),
          Container(
            padding: const EdgeInsets.all(40),
            color: Colors.amber,
            child: const Text('three'),
          )
        ],
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