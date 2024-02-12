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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hello, world'),
          TextButton(
            onPressed: foo,
            style: TextButton.styleFrom(
              backgroundColor: Colors.amber
            ),
            child: Text('Click me'),
          ),
          Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30),
              child: Text('Inside container'),
          ),
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