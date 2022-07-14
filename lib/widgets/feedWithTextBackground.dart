import 'package:class_bit_flutter/widgets/reactionButtons.dart';
import 'package:flutter/material.dart';

class FeedWithTextBackground extends StatelessWidget {
  const FeedWithTextBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                child: Padding(
                  padding: const EdgeInsets.all(2), // Border radius
                  child: ClipOval(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsoZQcMuixTrmUPB06a62Blczi6agZJpBHlg&usqp=CAU')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: RichText(

                    text:  TextSpan(
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(text: 'is with ', style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.black)),
                          TextSpan(text: 'Ashish Gautam'),
                          TextSpan(text: ' and  ', style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.black)),
                          TextSpan(text: '32 others'),


                        ],
                    text: 'Motu Patlu'


                  ),),
                ),
              ),

            ],
          ),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.green,
            child: Center(child: Text('I am felling very exhausted',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),)),
          ),
          Divider(),
          ReactionButtons(),
          Divider()
        ],
      ),
    );
  }
}
