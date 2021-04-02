import 'package:flutter/material.dart';
import 'helpers/Constants.dart';
import 'LoginPage.dart';
import 'HomePage.dart';
import 'RegisterPage.dart';
import 'PagesHome.dart';

void main() => runApp(ContactlyApp());

class ContactlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routes = <String, WidgetBuilder>{
      loginPageTag: (context) => LoginPage(),
      homePageTag: (context) => HomePage(),
      RegisterPageTag: (context) => RegisterPage(),
      PagesHomeTag: (context) => PagesHome(),
    };
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: new ThemeData(
          primaryColor: appDarkGreyColor,
        ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/login': (context) => HomePage(),
        '/register': (context) => RegisterPage(),
        '/pageshome': (context) => PagesHome(),
      },
    );


  }
}