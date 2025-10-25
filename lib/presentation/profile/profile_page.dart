import 'package:firstapp/presentation/profile/widgets/profile_card_widget.dart';
import 'package:firstapp/widgets/discover_list_widget.dart';
import 'package:firstapp/widgets/title_and_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> gambarMenu = [
    'assets/images/food1.webp',
    'assets/images/food2.webp',
    'assets/images/food3.jpg',
    'assets/images/food4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleAndSubtitle(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 200,
                  // color: Colors.red,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DiscoverListWidget();
                    },
                  ),
                ),

                TitleAndSubtitle(),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 200,
                  // color: Colors.red,
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

