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
        child: Image(
          image: NetworkImage('https://images.unsplash.com/photo-1516339901601-2e1b62dc0c45?q=80&w=1942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
        )
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