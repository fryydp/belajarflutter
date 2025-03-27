import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _profileImage; // Variabel untuk menyimpan gambar profil

  // Fungsi untuk memilih gambar dari galeri
  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menampilkan gambar profil
            CircleAvatar(
              radius: 60,
              backgroundImage: _profileImage != null
                  ? FileImage(_profileImage!) // Jika ada gambar, tampilkan
                  : AssetImage('assets/images/default_profile.png') as ImageProvider, // Gambar default
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage, // Memanggil fungsi untuk memilih gambar
              child: Row(
                mainAxisSize: MainAxisSize.min, // Menyesuaikan ukuran tombol dengan konten
                children: [
                  Icon(Icons.camera_alt), // Ikon kamera
                  SizedBox(width: 8), // Jarak antara ikon dan teks
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
