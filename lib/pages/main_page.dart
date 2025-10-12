import 'package:flutter/material.dart';
import 'home_page.dart';
import 'history_page.dart';
import 'settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;
  
  final List<Widget> _pages = [
    // Center(child: Text("Halaman Home", style: TextStyle(fontSize: 24))),
    // Center(child: Text("Halaman About", style: TextStyle(fontSize: 24))),

    HomePage(),
    HistoryPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("First ", style: TextStyle(color: Colors.blue))),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "settings"),
        ],
      ),
    );
  }
}