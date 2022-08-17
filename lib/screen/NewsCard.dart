import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Image.network("https://media.istockphoto.com/photos/patan-picture-id637696304?k=20&m=637696304&s=612x612&w=0&h=GqmMtggU2LgHWcXPFNxMrZg9dtPzyrnl9ek5oARcI7Y=")),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Text('dsa'),
                Text('dsa'),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
