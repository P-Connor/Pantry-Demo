import 'package:flutter/material.dart';

class PantryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Pantry", style: Theme.of(context).textTheme.headline5),
        //backgroundColor: Color(0xffffd03c),
      ),
    );
  }
}
