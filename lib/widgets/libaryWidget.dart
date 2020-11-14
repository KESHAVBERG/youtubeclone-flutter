import 'package:flutter/material.dart';
import 'package:youtubeclone/widgets/recenterlyView.dart';

Row rowIcons(String title, IconData iconData) {
  return Row(
    children: [
      Icon(
        iconData,
        color: Colors.white,
      ),
      SizedBox(
        width: 30,
      ),
      Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      )
    ],
  );
}

class IconnLibaryClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(59, 59, 59, 0.3),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 230,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          rowIcons("History", Icons.history),
          SizedBox(
            height: 20,
          ),
          rowIcons("videos", Icons.ondemand_video_sharp),
          SizedBox(
            height: 20,
          ),
          rowIcons("download", Icons.arrow_downward_rounded),
          SizedBox(
            height: 20,
          ),
          rowIcons("movies", Icons.local_movies_outlined),
          SizedBox(
            height: 20,
          ),
          rowIcons("watch later", Icons.access_time_sharp),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class RecentViewClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 152,
      color: Color.fromRGBO(59, 59, 59, 0.3),

      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          recentView(
              "https://images.unsplash.com/photo-1601758065893-25c11bfa69b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=758&q=80",
              Colors.pinkAccent,
              "cat on",
              "youtuber"),
          SizedBox(
            width: 10,
          ),
          recentView(
              "https://images.unsplash.com/photo-1604548659587-b63fc195ea57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              Colors.pinkAccent,
              "Lake",
              "youtuber"),
          SizedBox(
            width: 10,
          ),
          recentView(
              "https://images.unsplash.com/photo-1601758065893-25c11bfa69b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=758&q=80",
              Colors.pinkAccent,
              "Lake",
              "youtuber"),
          SizedBox(
            width: 10,
          ),
          recentView(
              "https://images.unsplash.com/photo-1604609648252-29b002bc69b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
              Colors.pinkAccent,
              "Lake",
              "youtuber"),
          SizedBox(
            width: 10,
          ),
          recentView(
              "https://images.unsplash.com/photo-1604548659587-b63fc195ea57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
              Colors.pinkAccent,
              "Lake",
              "youtuber"),
        ],
      ),
    );
  }
}
