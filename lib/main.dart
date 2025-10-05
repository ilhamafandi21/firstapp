import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
      HomePage(),
      AboutPage(),
      ContactPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bottom Navigation Bar'),),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contact',
          ),
        ],
      ),
    );
  } 
}

class HomePage extends StatelessWidget  {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children : [
        Text("Text atas"),
        Text("Text dibawahnya"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.,),
            SizedBox(width: 10),
            Text("Text disamping icon"),
          ],
        ),
      ],
    );
  }
}

class AboutPage extends StatelessWidget  {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 250,

      child: ListView.builder(
        scrollDirection: Axis.horizontal, // scroll ke samping
        itemCount: 10, // jumlah card
        itemBuilder : (context, index){
          return MyCard(
            title: "Card ${index + 1}",
            color: Colors.primaries[index % Colors.primaries.length],
          );
        },
      ),
    );
  }
}

class MyCard extends StatelessWidget{

  final String title;
  final Color color;

  const MyCard({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext contetxt){
    return Container(
      width: 150,
      height: 200,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
  }

class ContactPage extends StatelessWidget  {
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context){
    return const Center(
      child: Text('Contact Page', style: TextStyle(fontSize: 24),),
    );
  }
}



