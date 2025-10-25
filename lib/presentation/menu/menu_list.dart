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
      appBar: AppBar(
        title: Text('Menu List'),
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.all(10),
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
      ),
    );
  }
}
