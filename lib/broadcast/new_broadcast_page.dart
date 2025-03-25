import 'package:flutter/material.dart';

class NewBroadcastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Siaran Baru'),
      ),
      body: Center(
        child: Text(
          'Halaman Siaran Baru',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}