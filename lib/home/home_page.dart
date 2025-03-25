import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../profile/profile_page.dart';
import '../group/new_group_page.dart';
import '../broadcast/new_broadcast_page.dart';
import '../devices/linked_devices_page.dart';
import '../messages/starred_messages_page.dart';
import '../settings/settings_page.dart';
import '../auth/login_page.dart';
import '../calculator/calculator_page.dart';
import '../theme_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Chat Page', style: TextStyle(fontSize: 24)),
    Text('Status Page', style: TextStyle(fontSize: 24)),
    Text('Komunitas Page', style: TextStyle(fontSize: 24)),
    Text('Panggilan Page', style: TextStyle(fontSize: 24)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('New Group'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewGroupPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.campaign),
              title: Text('New Broadcast'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewBroadcastPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.devices),
              title: Text('Linked Devices'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LinkedDevicesPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Starred Messages'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StarredMessagesPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Calculator'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorPage()),
                );
              },
            ),
            SwitchListTile(
              title: Text('Dark Mode'),
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (value) {
                themeProvider.toggleTheme(value);
              },
              secondary: Icon(Icons.brightness_6),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (Route<dynamic> route) => false,
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'New Group',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'New Broadcast',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Linked Devices',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}