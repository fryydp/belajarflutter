import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'auth/login_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dappa App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white, // Warna terang
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black, // Warna gelap
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      themeMode: themeProvider.themeMode,
      home: LoginPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to Dappa App!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}