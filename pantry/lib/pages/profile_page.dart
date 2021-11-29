import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Profile", style: Theme.of(context).textTheme.headline5),
          //backgroundColor: Color(0xffaaed97),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    SizedBox(
                      width: 120,
                      child:
                          Image(image: AssetImage('assets/images/avatar.png')),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Text("John Doe",
                              style: Theme.of(context).textTheme.headline4),
                          Text("john.doe@gmail.com",
                              style: Theme.of(context).textTheme.subtitle2),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text("Hello"),
            ],
          ),
        ));
  }
}
