import 'package:flutter/material.dart';

Container IconsForTrending(IconData icon, String category, Color color) {
  return Container(
      height: 50,
      width: 190,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: FlatButton.icon(
          onPressed: () {}, icon: Icon(icon), label: Text(category)));
}

class IconsTrending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconsForTrending(
                  Icons.whatshot_sharp, "trending", Colors.red[600]),
              IconsForTrending(Icons.music_note, "Music", Colors.green[600]),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconsForTrending(
                  Icons.videogame_asset_rounded, "gaming", Colors.brown[600]),
              IconsForTrending(Icons.note, "News", Colors.blue[800]),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconsForTrending(
                  Icons.movie, "Movies & Shows", Colors.yellow[800]),
              IconsForTrending(Icons.dry_cleaning, "Fashion", Colors.grey[800]),
            ],
          ),
        ],
      ),
    );
  }
}
