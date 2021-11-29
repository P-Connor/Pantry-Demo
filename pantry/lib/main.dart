import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';
import 'pages/pantry_page.dart';
import 'pages/plan_page.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pantry Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: Colors.white,
          accentColor: Color(0xff65677f),
          scaffoldBackgroundColor: Color(0xffedeef8),
          textTheme: TextTheme(
            headline1: GoogleFonts.chivo(
                fontSize: 100,
                fontWeight: FontWeight.w300,
                letterSpacing: -1.5),
            headline2: GoogleFonts.chivo(
                fontSize: 62, fontWeight: FontWeight.w300, letterSpacing: -0.5),
            headline3:
                GoogleFonts.chivo(fontSize: 50, fontWeight: FontWeight.w400),
            headline4: GoogleFonts.chivo(
                fontSize: 35, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            headline5:
                GoogleFonts.chivo(fontSize: 25, fontWeight: FontWeight.w400),
            headline6: GoogleFonts.chivo(
                fontSize: 21, fontWeight: FontWeight.w500, letterSpacing: 0.15),
            subtitle1: GoogleFonts.chivo(
                fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.15),
            subtitle2: GoogleFonts.chivo(
                fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.1),
            bodyText1: GoogleFonts.chivo(
                fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.5),
            bodyText2: GoogleFonts.chivo(
                fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            button: GoogleFonts.chivo(
                fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 1.25),
            caption: GoogleFonts.chivo(
                fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
            overline: GoogleFonts.chivo(
                fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
          )),
      home: MainPage(title: 'Pantry Demo Main Page'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static final List<Widget> _screens = <Widget>[
    RecipePage(),
    PantryPage(),
    PlanPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_outlined),
            label: 'Home',
            backgroundColor: Color(0xffff7b59),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen),
            label: 'Pantry',
            backgroundColor: Color(0xff95d084),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range_rounded),
            label: 'Plan',
            backgroundColor: Color(0xff96b5f5),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: 'Profile',
            backgroundColor: Color(0xffffd03c),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
      ),
    );
  }
}
