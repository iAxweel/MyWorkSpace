import 'package:flutter/material.dart';
import 'package:myworkspace/pages/splashpage.dart';
import 'package:myworkspace/pages/welcomepage.dart';
import 'package:myworkspace/services/loginservice.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    Provider(
      create: (_) => LoginService(),
      child: MaterialApp(
      theme: ThemeData(fontFamily: 'Metropolis'),
      debugShowCheckedModeBanner: false,
      home: SplashPage(duration: 3, goToPage: WelcomePage(),),
      )
    )
  );
}




