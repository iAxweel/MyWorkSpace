import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myworkspace/widgets/userprofileheader.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget{

  Color themeColor;
  bool showProfilePic;

  MainAppBar({
    this.themeColor = Colors.lightBlueAccent,
    this.showProfilePic = true
  });

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(60);

}

class MainAppBarState extends State<MainAppBar>{

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: ClipOval(
          child: Container(
            width: 40,
            height: 40,
            color: Colors.lightBlue[700],
            child: Image.asset('assets/images/MainLogo.png'),
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.lightBlue),
      actions: [
        UserProfileHeader(
            showProfilePic: widget.showProfilePic
        )
      ],
    );
  }
}