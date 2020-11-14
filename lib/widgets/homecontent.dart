// Container(
// child: Column(
// children: [
// Container(
// height: 300,
// width: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(
// image: DecorationImage(
// fit: BoxFit.fill,
// image: NetworkImage(
// "https://images.unsplash.com/photo-1601758282760-b6cc3d07523d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"))),
// ),
// Container(
// height: 100,
// padding: EdgeInsets.symmetric(horizontal: 20),
// width: MediaQuery.of(context).size.width,
// color: Colors.black,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Container(
// height: 50,
// width: 50,
// decoration: BoxDecoration(
// shape: BoxShape.circle, color: Colors.pink),
// child: Icon(
// Icons.person,
// ),
// ),
// Container(
// padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// "Walk on the land",
// textAlign: TextAlign.left,
// style: TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.w700,
// color: Colors.white),
// ),
// Text(
// "youtuber 29k views 4hours",
// textAlign: TextAlign.left,
// style: TextStyle(
// fontSize: 15,
// fontWeight: FontWeight.w700,
// color: Colors.grey[500]),
// ),
// ],
// ),
// ),
// Icon(Icons.more_vert)
// ],
// ),
// )
// ],
// ),
// ),

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Container homeContent(context, String imgUrl, title, details) {
  return Container(
    child: Column(
      children: [
        Stack(
          children: [
            Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: NetworkImage(imgUrl)))),
            Container(
              height: 20,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              color: Colors.black.withOpacity(0.9),
              margin: EdgeInsets.fromLTRB(340, 260, 10, 0),
              child: Text("10:17",style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
        // Container(
        //     height: 300,
        //     width: MediaQuery.of(context).size.width,
        //     decoration: BoxDecoration(
        //         image: DecorationImage(
        //             fit: BoxFit.fill, image: NetworkImage(imgUrl)))),
        Container(
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          color: HexColor('#131315'),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
                child: Icon(
                  Icons.person,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Text(
                      details,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50),
              Icon(
                Icons.more_vert,
                color: Colors.grey,
              )
            ],
          ),
        )
      ],
    ),
  );
}

Container TredingContent(context, String imgUrl, title, details) {
  return Container(
    child: Column(
      children: [
        Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(imgUrl)))),
        Container(
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: 200,
          color: Colors.grey[900],
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
                child: Icon(
                  Icons.person,
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Text(
                      details,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.more_vert,
                color: Colors.grey,
              )
            ],
          ),
        )
      ],
    ),
  );
}
