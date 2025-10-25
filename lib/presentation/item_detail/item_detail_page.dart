import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({super.key, required this.gambar});

  final String? gambar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Detail'),
      ),
      body: SafeArea(
        child: Container(
          height: 300,
          width: double.infinity,
          margin: EdgeInsets.all(10.0),
          child: Image.asset(gambar ?? 'Gambar tidak tersedia', fit: BoxFit.cover,)),
      ),
    );
  }
}
