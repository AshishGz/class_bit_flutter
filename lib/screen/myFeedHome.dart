import 'package:class_bit_flutter/model/story.dart';
import 'package:class_bit_flutter/util/data.dart';
import 'package:class_bit_flutter/widgets/storyUI.dart';
import 'package:flutter/material.dart';

class MyFeedHomePage extends StatefulWidget {
  const MyFeedHomePage({Key? key}) : super(key: key);

  @override
  State<MyFeedHomePage> createState() => _MyFeedHomePageState();
}

class _MyFeedHomePageState extends State<MyFeedHomePage> {

  List<Story> _stories=[];

  @override
  initState(){
    getStoryData();

  }

  getStoryData(){
    STORY_DATA.forEach((element) {
      _stories.add(Story.fromJson(element));
    });
  }
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
                ..._stories.map((e) =>
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: StoryUI(story: e,),
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
