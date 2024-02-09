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
      body: Center(
        child: Image.asset('assets/space-1.jpg'),
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