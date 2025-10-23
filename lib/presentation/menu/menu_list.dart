// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

// @RoutePage()
class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(8.0),
              child: Image.asset('assets/images/food1.webp', fit: BoxFit.contain),
            ),
          ),
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
