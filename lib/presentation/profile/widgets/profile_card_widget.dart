import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(
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

                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    226,
                                    241,
                                    209,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        StatusWidget(
                                          text: 'Articles',
                                          value: 34,
                                          textColor: Colors.grey[500],
                                          textSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        StatusWidget(
                                          text: 'Followers',
                                          value: 2334,
                                          textColor: Colors.grey[500],
                                          textSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        StatusWidget(
                                          text: 'Rating',
                                          value: 8.9,
                                          textColor: Colors.grey[500],
                                          textSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Flexible(
            child: SizedBox(
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
    );
  }
}

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
    required this.text,
    required this.value,
    required this.textColor,
    required this.textSize,
    required this.fontWeight,
  });
  final String? text;
  final double value;
  final Color? textColor;
  final double? textSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text ?? 'null',
          style: TextStyle(color: textColor, fontSize: textSize),
        ),
        Text(value.toString(), style: TextStyle(fontWeight: fontWeight)),
      ],
    );
  }
}
