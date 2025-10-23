import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Container(
            height: 250,
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(254, 255, 253, 1),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  blurRadius: 5.0,
                  offset: Offset.fromDirection(90),
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
          // child: Container(
          //   height: 250,
          //   color: Colors.red,
          //   child: Card(
          //     child: Column(
          //       children: [
          //         Row(
          //           children: [
          //             Image.asset(
          //               'assets/images/food1.webp',
          //               width: 100,
          //               height: 100,
          //             ),

          //             Column(
          //               children: [
          //                 Column(children: [Text('Username'), Text('Job Title')]),
          //                 Column(
          //                   children: [
          //                     Row(
          //                       children: [
          //                         Column(
          //                           children: [Text('Articles'), Text('34')],
          //                         ),

          //                         Column(
          //                           children: [Text('followers'), Text('1120')],
          //                         ),
          //                         Column(children: [Text('Rate'), Text('9.3')]),
          //                       ],
          //                     ),
          //                   ],
          //                 ),
          //               ],
          //             ),
          //           ],
          //         ),

          //         Row(
          //           children: [
          //             ElevatedButton(onPressed: () {}, child: Text('Chat')),
          //             ElevatedButton(
          //               onPressed: () {},
          //               child: Text('Follow'),
          //               style: ButtonStyle(
          //                 backgroundColor: WidgetStatePropertyAll(
          //                   Colors.lightBlue,
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
