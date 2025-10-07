import 'package:flutter/material.dart';

class HomePage extends StatelessWidget  {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context){
   return Scaffold(
    appBar: AppBar(
      title: const Text(' App'),
      centerTitle: true,
    ),
    body: Padding(
      padding : const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Puasa sedang berjalan",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.deepPurple[100],
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                "12:45\ntersisa",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
          ),

          const SizedBox(height: 30),
          const Text(
            "Mulai: 20:00  |  Buka: 12:00",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),

          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow),
            label: const Text("Mulai Puasa Baru"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            ),
          ),
        ],
      ),
      
    ),
   );
  }
}