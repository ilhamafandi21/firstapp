import 'package:firstapp/presentation/profile/widgets/profile_card_widget.dart';
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DiscoverListWidget extends StatelessWidget {
  const DiscoverListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 200,
      child: Column(
        spacing: 10,
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://picsum.photos/id/237/200/300',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // padding: EdgeInsets.only(top: 10),
              // color: Colors.yellow,
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600], fontWeight: FontWeight.w700,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Title of the Article dddd sssddd ddd',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

