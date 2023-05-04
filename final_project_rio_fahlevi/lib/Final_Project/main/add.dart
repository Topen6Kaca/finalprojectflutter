import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add")),
      body: Center(
       child: Text("Add Screen",style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
