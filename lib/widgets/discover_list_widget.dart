import 'package:flutter/material.dart';

class DiscoverListWidget extends StatelessWidget {
  const DiscoverListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 200,
      child: Column(
        spacing: 10,
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://picsum.photos/id/237/200/300',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              // padding: EdgeInsets.only(top: 10),
              // color: Colors.yellow,
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2,
                children: [
                  Text(
                    'Nature',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600], fontWeight: FontWeight.w700,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Title of the Article dddd ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
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

