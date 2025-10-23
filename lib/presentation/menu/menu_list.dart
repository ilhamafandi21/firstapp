// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// @RoutePage()
class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  List<String> gambarMenu = [
    'assets/images/food1.webp',
    'assets/images/food2.webp',
    'assets/images/food3.jpg',
    'assets/images/food4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2/1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => (
             
              child: Image.asset(gambarMenu[index], fit: BoxFit.cover),
            ),
          ),

          // child: ListView.builder(
          //   scrollDirection: Axis.vertical,
          //   itemCount: gambarMenu.length,
          //   itemBuilder: (context, index) => Container(
          //     // alignment: Alignment.topRight,
          //     height: 100,
          //     width: 100,
          //     margin: EdgeInsets.all(8.0),

          //     child: Image.asset(gambarMenu[index], fit: BoxFit.cover, ),
          //   ),
          // ),

          // child: ListView(
          //   scrollDirection: Axis.vertical,
          //   children: [
          //     Text('Food 1'),
          //     Container(
          //       height: 100,
          //       width: 100,
          //       child: Image.asset("assets/images/food1.webp"),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
