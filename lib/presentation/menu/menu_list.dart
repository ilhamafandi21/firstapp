// import 'package:auto_route/auto_route.dart';
import 'package:firstapp/presentation/item_detail/item_detail_page.dart';
import 'package:firstapp/widgets/menu_list.dart';
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
            itemCount: gambarMenu.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1 / 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 100,
            ),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ItemDetailPage(gambar: gambarMenu[index],)),
                );
              },
              child: ListImage(gambarMenu: gambarMenu[index]),
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
