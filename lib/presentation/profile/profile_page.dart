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
            padding: EdgeInsets.all(15),
            width: double.infinity,
            height: 250,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(254, 255, 253, 1),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  offset: Offset.fromDirection(90),
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 160,
                  // color: Colors.amber,
                  child: Row(
                    children: [
                      Container(
                        // color: const Color.fromARGB(255, 1, 2, 3),
                        width: 150,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://allprodad.com/wp-content/uploads/2021/03/05-12-21-happy-people.jpg',
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          // color: Colors.green,
                          // width: double.infinity,
                          margin: EdgeInsets.only(bottom: 10, left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'John Doe',
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                               Text(
                                'Software Engineer',
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 12,
                                ),
                              ),

Expanded(child: Container(
  // color: Colors.green,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
          Column(children: [
            Text('Articles', style: TextStyle(color: Colors.grey[500]),),
            Text('34', style: TextStyle(fontWeight: FontWeight.bold),),
          ],),
                  
          Column(children: [
            Text('Follwers', style: TextStyle(color: Colors.grey[500]),),
            Text('324', style: TextStyle(fontWeight: FontWeight.bold),),
          ],),
                  
          Column(children: [
            Text('Rating', style: TextStyle(color: Colors.grey[500]),),
            Text('9.3', style: TextStyle(fontWeight: FontWeight.bold),),
          ],),
        ],
      ),
    ],
  )
))

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Flexible(
                  child: Container(
                    height: 60,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: 10,
                      children: [
                        Expanded(
                          flex: 1,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                
                              ),
                            ),
                            onPressed: () {},
                            child: Text('Chat'),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              backgroundColor: Colors.lightBlue,
                            ),
                            onPressed: () {},
                            child: Text('Follow'),
                          ),
                        ),
                      ],
                    ),
                  ),
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
