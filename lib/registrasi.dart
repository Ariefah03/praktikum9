import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget untuk mengisi username
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0), // Jarak antara username dan password

            // Widget untuk mengisi password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0), // Jarak antara password dan tanggal lahir

            // Widget untuk mengisi tanggal lahir
            TextField(
              decoration: InputDecoration(
                labelText: 'Tanggal Lahir',
              ),
            ),
            SizedBox(height: 16.0), // Jarak antara tanggal lahir dan alamat

            // Widget untuk mengisi alamat
            TextField(
              decoration: InputDecoration(
                labelText: 'Alamat',
              ),
            ),
            SizedBox(height: 16.0), // Jarak antara alamat dan tombol register

            // Tombol untuk melakukan registrasi
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk proses registrasi di sini
                // Misalnya, validasi dan penyimpanan data pengguna
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
