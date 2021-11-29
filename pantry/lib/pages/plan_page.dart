import 'package:flutter/material.dart';

class PlanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:
              Text("This Week", style: Theme.of(context).textTheme.headline5),
          //backgroundColor: Color(0xff96b5f5),
        ),
        body: ListView(
          children: [
            Text("Today:"),
            Divider(),
            Text("Tuesday:"),
            Divider(),
            Text("Wednesday:"),
            Divider(),
            Text("Thurday:"),
            Divider(),
          ],
        ));
  }
}
