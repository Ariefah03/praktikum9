import 'package:flutter/material.dart';
import 'login.dart';
import 'registrasi.dart';
import 'halamanawal.dart';
import 'splash.dart';  // Import the new splash screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',  // Set the initial route to the splash screen
      routes: {
        '/splash': (context) => SplashPage(),  // Define the splash screen route
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/halamanawal': (context) => HomePage(),
      },
    );
  }
}
