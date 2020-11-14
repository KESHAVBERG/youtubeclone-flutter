import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtubeclone/widgets/app.dart';
import 'package:youtubeclone/widgets/homecontent.dart';
import 'package:youtubeclone/widgets/subcription.dart';

class Sub extends StatefulWidget {
  @override
  _SubState createState() => _SubState();
}

class _SubState extends State<Sub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Container(
            alignment: Alignment.topCenter,
            child: ListView(
              shrinkWrap: true,
                children: [
              appBar(context),
              Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  child: SubMaterial().subhorizontal()),
              Container(
                height: 0.5,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: Text(""),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  physics: ClampingScrollPhysics(),

                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SubMaterial().texts("ALL"),
                    SizedBox(
                      width: 10,
                    ),
                    SubMaterial().texts("Today"),
                    SizedBox(
                      width: 10,
                    ),
                    SubMaterial().texts("Live"),
                    SizedBox(
                      width: 10,
                    ),
                    SubMaterial().texts("Post"),
                    SizedBox(
                      width: 10,
                    ),
                    SubMaterial().texts("continue Watching"),
                    SizedBox(
                      width: 10,
                    ),
                    SubMaterial().texts("unwatched"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
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
            ])));
  }
}
