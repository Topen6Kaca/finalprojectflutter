import 'package:flutter/material.dart';

class Discovery extends StatelessWidget {
  const Discovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Discovery")),
      body: Center(
       child: Text("Discovery Screen",style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
