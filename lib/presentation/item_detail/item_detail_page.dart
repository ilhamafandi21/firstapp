import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({super.key, this.gambarMenu});

  final String? gambarMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: Center(child: Text(gambarMenu ?? 'Null')) ),
    );
  }
}