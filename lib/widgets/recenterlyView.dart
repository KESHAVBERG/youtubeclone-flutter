import 'package:flutter/material.dart';

Container recentView(String imgUrl, Color colorofprofilepic, String title,
    youtuber) {
  return Container(
    height: 70,
    width: 150,
    child: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          imgUrl
                      ))),
            ),
            Container(
              height: 20,
              width: 50,
              alignment: Alignment.center,
              color: Colors.black.withOpacity(0.9),
              margin: EdgeInsets.fromLTRB(90, 70, 10, 0),
              child: Text("10:17",style: TextStyle(
                color: Colors.white,

              ),),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "${title} ...",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "${youtuber}..",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Icon(Icons.more_vert, color: Colors.white,)
          ],
        )
      ],
    ),
  );
}