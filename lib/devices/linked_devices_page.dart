import 'package:flutter/material.dart';

class LinkedDevicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perangkat Tertaut'),
      ),
      body: Center(
        child: Text(
          'Halaman Perangkat Tertaut',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}