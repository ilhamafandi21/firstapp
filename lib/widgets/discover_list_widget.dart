import 'package:flutter/material.dart';

class DiscoverListWidget extends StatelessWidget {
  const DiscoverListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 10,
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://picsum.photos/id/237/200/300'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Halo'),
                      Text(
                        'ini d ksnks sjnsjs sjbsj sjs sjbs sjk ks ks ks',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
