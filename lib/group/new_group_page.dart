import 'package:flutter/material.dart';

class NewGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grup Baru'),
      ),
      body: Center(
        child: Text(
          'Halaman Grup Baru',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}