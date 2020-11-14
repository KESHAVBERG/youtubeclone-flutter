
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubMaterial{
  Column youtubers(Color color,IconData iconData){
    return   Column(
      mainAxisAlignment:MainAxisAlignment.center ,
      children: [
        Container(
          height: 60,
          width: 70,
          decoration: BoxDecoration(
              color: color, shape: BoxShape.circle),
          child: Icon(iconData),
        ),
        Text("youtuber",style: TextStyle(
          color: Colors.grey[600],
          fontSize: 15
        ),)
      ],
    );
  }

  Row subhorizontal(){
    return Row(
      children: [
        SubMaterial().youtubers(Colors.white30, Icons.person),
        SizedBox(
          width: 5,
        ),
        SubMaterial().youtubers(Colors.pink, Icons.person),
        SizedBox(
          width: 5,
        ),
        SubMaterial().youtubers(Colors.deepOrange, Icons.person),
        SizedBox(
          width: 5,
        ),
        SubMaterial().youtubers(Colors.yellow, Icons.person),
        SizedBox(
          width: 5,
        ),
       
      ],
    );
  }

  Container texts(String title){
    return Container(
      alignment: Alignment.center,
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(50)),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}