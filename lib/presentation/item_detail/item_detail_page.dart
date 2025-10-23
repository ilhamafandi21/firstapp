import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({super.key, required this.gambar});

  final String? gambar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 300,
          width: double.infinity,
          child: Image.asset(gambar ?? 'Gambar tidak tersedia', fit: BoxFit.cover)),
      ),
    );
  }
}
