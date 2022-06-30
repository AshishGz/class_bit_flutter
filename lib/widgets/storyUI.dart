import 'package:flutter/material.dart';

class StoryUI extends StatelessWidget {
  const StoryUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,

      decoration: BoxDecoration(
          color: Colors.green,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage("https://i.pinimg.com/236x/a0/53/3d/a0533dfabfaf6173efe629e62e1c98fc.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      width: MediaQuery.of(context).size.width*.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(2), // Border radius
                    child: ClipOval(child: Image.network("https://i.pinimg.com/236x/a0/53/3d/a0533dfabfaf6173efe629e62e1c98fc.jpg")),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Motu Patlu",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16
            ),),
          ),
        ],
      ),
    );
  }
}
