import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myworkspace/pages/categorylistpage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:myworkspace/pages/morepage.dart';
import 'package:myworkspace/pages/profilepage.dart';

class CategoryBottomBar extends StatefulWidget {
  @override
  _CategoryBottomBarState createState() => _CategoryBottomBarState();
}

class _CategoryBottomBarState extends State<CategoryBottomBar> {
  int index = 0;

  late List<Widget> pages;
  late Widget currentPage;

  late CategoryListPage categoryListPage;
  late ProfilePage profilePage;
  late MorePage morePage;

  @override
  void initState(){
    super.initState();
    categoryListPage = CategoryListPage();
    profilePage = ProfilePage();
    morePage = MorePage();
    pages = [categoryListPage, profilePage, morePage];
    currentPage = categoryListPage;
  }

  @override
  Widget build(BuildContext context) {
    /*
    return  Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.2),
                offset: Offset.zero
            )
          ]
      ),
      height: 100,
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(Icons.home, color: Colors.lightBlue),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.lightBlue),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(Icons.more, color: Colors.lightBlue),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
    */
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.person, size: 30),
      Icon(Icons.more, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      body: currentPage,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.black)
        ),
        child: CurvedNavigationBar(
          color: Colors.white,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.lightBlue,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          index: index,
          items: items,
          onTap: (int index) {
            setState(() {
              this.index = index;
              currentPage = pages[index];
            });
          },
        ),
      ),
    );
  }
}
