import 'package:flutter/material.dart';
import 'registrasi.dart';
import 'halamanawal.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk proses login di sini
                // Misalnya, validasi dan autentikasi pengguna
                bool loginSuccess = true;  // Ganti dengan logika sesuai kebutuhan

                if (loginSuccess) {
                  // Navigasi ke halaman home jika login berhasil
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                } else {
                  // Navigasi ke halaman registrasi jika login gagal
                  Navigator.pushNamed(context, '/register');
                }
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman registrasi ketika teks diklik
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                'Belum Daftar? Registrasi sekarang!',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
