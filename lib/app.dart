import 'package:flutter/material.dart';
import 'package:myworkspace/widgets/categorybottombar.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyWorkSpace App",
      theme: ThemeData(
          primaryColor: Colors.blueAccent,
          fontFamily: 'Metropolis'
      ),
      home: CategoryBottomBar(),
    );
  }
}

