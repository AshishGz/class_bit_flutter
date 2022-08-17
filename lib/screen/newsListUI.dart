import 'dart:convert';

import 'package:class_bit_flutter/model/news.dart';
import 'package:class_bit_flutter/screen/NewsCard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class NewsListUI extends StatefulWidget {
  const NewsListUI({Key? key}) : super(key: key);

  @override
  State<NewsListUI> createState() => _NewsListUIState();
}

class _NewsListUIState extends State<NewsListUI> {

  List<News> _news=[];

  @override
  initState(){
    onGetData();
}

  onGetData() async {
    var url =
    Uri.https('jsonplaceholder.typicode.com','/comments');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    if(response.statusCode==200){
      jsonDecode(response.body).forEach((data)=>{
        _news.add(News.fromJson(data))
      });
    }
    setState(() {

    });
    print('Response body: ${response.body}');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      children: [
        ..._news.map((e) =>
            NewsCard(),
        )


      ],
    ));
  }
}
