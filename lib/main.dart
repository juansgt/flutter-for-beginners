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
        children: <Widget>[
          Expanded(
            flex: 3,
              child: Image.asset('assets/space-1.jpg')
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.pinkAccent,
              child: Text('2'),),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amber,
              child: Text('3'),),
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