import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:youtubeclone/pages/add.dart';
import 'package:youtubeclone/pages/home.dart';
import 'package:youtubeclone/pages/library.dart';
import 'package:youtubeclone/pages/subcribtion.dart';
import 'package:youtubeclone/pages/trending.dart';

class Holder extends StatefulWidget {
  @override
  _HolderState createState() => _HolderState();
}

class _HolderState extends State<Holder> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  PageController pageController;
  int pageindex = 0;

  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController();
    super.initState();
  }

  onChaged(int pageIndex) {
    setState(() {
      this.pageindex = pageIndex;
    });
  }

  ontap(int pageindex) {
    pageController.animateToPage(pageindex,
        duration: Duration(milliseconds: 200), curve: Curves.slowMiddle);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: PageView(
        controller: pageController,
        onPageChanged: onChaged,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Home(),
          Trending(),
          ADD(),
          Sub(),
          Library(),
        ],

      ),
      //313335
      bottomNavigationBar: CupertinoTabBar(
        activeColor: Colors.white,
        currentIndex: pageindex,
        backgroundColor: HexColor('#131315'),
        onTap: ontap,
        items: [
          BottomNavigationBarItem(activeIcon: Icon(Icons.home), icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(activeIcon: Icon(Icons.explore),icon: Icon(Icons.explore_outlined),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline,size: 50,)),
          BottomNavigationBarItem(activeIcon: Icon(Icons.subscriptions),icon: Icon(Icons.subscriptions_outlined,),label: "subscriptions"),
          BottomNavigationBarItem(activeIcon: Icon(Icons.video_library),icon: Icon(Icons.video_library_outlined),label: "Library"),

        ],
      ),
    );
  }
}
