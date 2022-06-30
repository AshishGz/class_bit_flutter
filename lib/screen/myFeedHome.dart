import 'package:class_bit_flutter/widgets/storyUI.dart';
import 'package:flutter/material.dart';

class MyFeedHomePage extends StatelessWidget {
  const MyFeedHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 220,
          padding: EdgeInsets.only(left:12,top:12,bottom: 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...[1,2,3,4,5,6,7,8,9].map((e) =>
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: StoryUI(),
                    ),
                )


              ],
            ),
          ),
        ),
      ],
    );
  }
}
