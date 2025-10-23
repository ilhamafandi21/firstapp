import 'package:flutter/material.dart';

class ListImage extends StatelessWidget {
  const ListImage({super.key, required this.gambarMenu});

  final String gambarMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Image.asset(gambarMenu, fit: BoxFit.cover),
    );
  }
}
