//Widget para mostrar pantalla al iniciar la aplicación durante segundos
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myworkspace/helpers/iconhelper.dart';
import 'package:myworkspace/widgets/iconfont.dart';

class SplashPage extends StatelessWidget{
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context){

    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage)
      );
    });

    return Material(
        child: Container(
            color: Colors.lightBlue,
            alignment: Alignment.center,
            child: Stack(
              children: [
                Align(
                  child: IconFont(
                      color: Colors.white,
                      iconName: IconFontHelper.LOGO,
                      size: 80
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white.withOpacity(0.5)),
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}

