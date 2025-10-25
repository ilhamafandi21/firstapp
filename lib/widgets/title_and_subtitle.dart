import 'package:flutter/material.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Notable Work',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          'Based on the popularity of articles',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey[500],
          ),
        ),
      ],
    );
  }
}
