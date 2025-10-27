import 'package:firstapp/widgets/discover_list_widget.dart';
import 'package:firstapp/widgets/title_and_subtitle.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List<String> gambarMenu = [
    'assets/images/food1.webp',
    'assets/images/food2.webp',
    'assets/images/food3.jpg',
    'assets/images/food4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Discover Page')),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleAndSubtitle(
                  title: 'Notable Work',
                  subtitle: 'Based on the popularity of articles',
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 200,
                  color: Colors.red,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DiscoverListWidget();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
