import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String profileImageUrl = 'https://via.placeholder.com/150';
  final String name = 'Nama Pengguna';
  final String about = 'Tentang Pengguna';
  final String phoneNumber = '0890795500';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(profileImageUrl),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Nama',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Tentang',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              about,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Nomor Telepon',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              phoneNumber,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}