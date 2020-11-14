import 'dart:ui';

import 'package:flutter/material.dart';

Container appBar(context){
  return  Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      boxShadow: kElevationToShadow[1],
      color: Colors.grey[900],


    ),
    height: 70,
    width: MediaQuery.of(context).size.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("img/youtube.png")
                  )
              ),
            ),
            Text("YouTube",style: TextStyle(
              letterSpacing: 0,
                color: Colors.white,
                fontSize: 23,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold
            ),)
          ],
        ),
        Row(
          children: [
            Icon(Icons.cast,color: Colors.grey[400],),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.notifications_none,color: Colors.grey[400],),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search,color: Colors.grey[400],),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
              ),
              child: Icon(
                Icons.person,
              ),
            ),

          ],
        ),
      ],
    ),
  );
}