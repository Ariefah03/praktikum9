import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  _navigateToLogin() async {
    // Tambahkan delay 5 detik sebelum menampilkan splash screen
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/236x/d6/36/61/d6366152bdd80f4a59b70c7278f9e36f.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.network(
            'https://i.pinimg.com/236x/d6/36/61/d6366152bdd80f4a59b70c7278f9e36f.jpg',
            height: 1800, // Atur tinggi gambar
            width: 1800, // Atur lebar gambar
          ),
        ),
      ),
    );
  }
}
