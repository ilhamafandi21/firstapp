// import 'package:auto_route/auto_route.dart';
import 'package:firstapp/application/example_provider.dart';
import 'package:firstapp/presentation/dashboard/dashboard.dart';
import 'package:firstapp/presentation/discover/discover_page.dart';
import 'package:firstapp/presentation/menu/menu_list.dart';
import 'package:firstapp/presentation/profile/profile_page.dart';
import 'package:firstapp/presentation/providers/provider_page.dart';
import 'package:firstapp/widgets/icon_with_label.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// @RoutePage()
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ExampleProvider>(
      builder: (context, exampleProvider, _) => Scaffold(
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(255, 193, 255, 7),
          title: const Text(
            "Fasting App",
            style: TextStyle(
              color: Colors.brown,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Icon(Icons.account_circle, color: Colors.brown),
            Icon(Icons.settings),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(exampleProvider.getDataString ?? 'null'),
                ElevatedButton(
                  // style: ElevatedButton.styleFrom(backgroundColor: Colors.lime),
                  onPressed: () {
                    exampleProvider.setDataString('0');
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProviderPage()),
                    );
                  },
                  child: Text('Provider Page'),
                ),
              ],
            ),

            ElevatedButton(
              // style: ElevatedButton.styleFrom(backgroundColor: Colors.lime),
              onPressed: () {
                String title = 'Dashboard';
                String buttonText = 'Back to Home';
                // context.router.push(
                //   Dashboard(title: title, buttonText: buttonText),
                // );
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        Dashboard(title: title, buttonText: buttonText),
                  ),
                );
              },
              child: Text('Go to Dashboard'),
            ),

            ElevatedButton(
              // style: ElevatedButton.styleFrom(backgroundColor: Colors.lime),
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => MenuList()));
              },
              child: Text('Go to Menu List'),
            ),

            ElevatedButton(
              // style: ElevatedButton.styleFrom(backgroundColor: Colors.lime),
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => DiscoverPage()));
              },
              child: Text('Go to Menu Discover Page'),
            ),

            // ElevatedButton(
            //   // style: ElevatedButton.styleFrom(backgroundColor: Colors.lime),
            //   onPressed: () {
            //     Navigator.of(
            //       context,
            //     ).push(MaterialPageRoute(builder: (context) => Profile(loginResponse: ,)));
            //   },
            //   child: Text('Go to Profile Page'),
            // ),

            Container(
              alignment: AlignmentGeometry.center,
              color: Colors.grey[200],
              width: double.infinity,
              height: 80.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithLabel(
                    icon: Icons.call,
                    text: 'Call',
                    textColor: Colors.blue,
                    iconColor: Colors.green,
                  ),
                  IconWithLabel(
                    icon: Icons.navigation,
                    text: 'Route',
                    textColor: Colors.blue,
                    iconColor: Colors.green,
                  ),
                  IconWithLabel(
                    icon: Icons.share,
                    text: 'Share',
                    textColor: Colors.blue,
                    iconColor: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
