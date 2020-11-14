import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtubeclone/widgets/app.dart';
import 'package:youtubeclone/widgets/homecontent.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(children: [
          appBar(context),
          homeContent(
              context,
              "https://images.unsplash.com/photo-1601758065893-25c11bfa69b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=758&q=80",
              "cat on catus",
              "youtuber 30k views 10 years ago"),
          homeContent(
              context,
              "https://images.unsplash.com/photo-1604548659587-b63fc195ea57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              "mountain and threes",
              "youtuber 40k views 1 years ago"),
          homeContent(
              context,
              "https://images.unsplash.com/photo-1604609648252-29b002bc69b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
              "car on street",
              "youtuber 30k views 10 years ago"),
          homeContent(
              context,
              "https://images.unsplash.com/photo-1601758065893-25c11bfa69b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=758&q=80",
              "cat on catus",
              "youtuber 30k views 10 years ago"),
          homeContent(
              context,
              "https://images.unsplash.com/photo-1604609648252-29b002bc69b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
              "car on street",
              "youtuber 30k views 10 years ago"),
        ]),
      ),
    );
  }
}
