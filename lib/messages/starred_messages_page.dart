import 'package:flutter/material.dart';

class StarredMessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesan Berbintang'),
      ),
      body: Center(
        child: Text(
          'Halaman Pesan Berbintang',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}