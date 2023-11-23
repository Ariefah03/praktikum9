import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'Kemeja',
      'images': [
        'https://i.pinimg.com/236x/21/27/6f/21276fce6496208e2f573145c51d1ede.jpg',
        'https://i.pinimg.com/564x/93/81/62/93816284b11870d6647fe342924f9499.jpg',
      ],
    },
    {
      'name': 'Gamis',
      'images': [
        'https://i.pinimg.com/564x/78/49/b5/7849b5e542a937c4af96ae9a0cb2f9ee.jpg',
        'https://i.pinimg.com/564x/e7/ff/32/e7ff3245670768454011259176b0372a.jpg',
      ],
    },
    {
      'name': 'Rok',
      'images': [
        'https://i.pinimg.com/564x/6d/26/33/6d263313087b29887dcc0fb636cbd0e7.jpg',
      ],
    },
    // Tambahkan item lain sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/564x/8e/41/e5/8e41e5df0436f19fe42c0c562f061e5f.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(items.length, (index) {
              return Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(items[index]['name']),
                      onTap: () {
                        // Tambahkan logika ketika item diklik di sini
                        // Misalnya, navigasi ke halaman detail
                      },
                    ),
                    SizedBox(
                      height: 150,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(items[index]['images'].length, (imageIndex) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(color: Colors.grey), // Tambahkan garis pemisah
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(items[index]['images'][imageIndex]),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
