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
      body: Container(child: ListView(
        scrollDirection: Axis.,
        children: [
          Text('List 1'),
           Text('List 1'),
            Text('List 1'),
             Text('List 1'),
              Text('List 1'),
               Text('List 1'),
                Text('List 1'),
        ],
      ),),
    );
  }
}