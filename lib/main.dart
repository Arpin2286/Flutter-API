import 'package:flutter/material.dart';
import 'Dashboard.dart';
import 'Promo.dart';
import 'pengguna_lain.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ruang_loak",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: NavBot()));
}

class NavBot extends StatefulWidget {
  @override
  _NavBotState createState() => _NavBotState();
}

class _NavBotState extends State<NavBot> {
  int _selectedIndex = 0;
  List<Widget> _widgetOption = <Widget>[
    Dashboard(),
    Promo(),
    PenggunaLain(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), title: Text("Promo")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add), title: Text("Tambah Teman"))
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
