import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:youtubeclone/widgets/app.dart';
import 'package:youtubeclone/widgets/homecontent.dart';
import 'package:youtubeclone/widgets/libaryWidget.dart';
import 'package:youtubeclone/widgets/recenterlyView.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            alignment: Alignment.topCenter,
            child: ListView(children: [
              appBar(context),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Color.fromRGBO(59, 59, 59, 0.3),

                child: Text(
                  "Recent",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              RecentViewClass(),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.white38,
                child: Text(""),
              ),
              IconnLibaryClass(),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.white38,
                child: Text(""),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                color: Color.fromRGBO(59, 59, 59, 0.3),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "PlayLists",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Row(
                      children: [
                        Text(
                          "Recently Added",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                color: Color.fromRGBO(59, 59, 59, 0.3),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.blue[800],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "New Playlist",
                      style: TextStyle(fontSize: 20, color: Colors.blue[600]),
                    )
                  ],
                ),
              )
            ])));
  }
}
