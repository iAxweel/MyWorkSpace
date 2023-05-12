import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myworkspace/pages/onboardingpage.dart';
import 'package:myworkspace/services/loginservice.dart';
import 'package:myworkspace/widgets/categorybottombar.dart';
import 'package:myworkspace/widgets/themebutton.dart';
import 'package:provider/provider.dart';


//Widget para mostrar la página de bienvenida
class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    LoginService loginService = Provider.of<LoginService>(context, listen: false);

    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 1.0,
                    child: Image.asset('assets/images/background_welcomePage.jpg',
                        fit: BoxFit.cover
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: ClipOval(
                          child: Container(
                            width: 180,
                            height: 180,
                            color: Colors.lightBlue[700],
                            alignment: Alignment.center,
                            child: Image.asset('assets/images/MainLogo.png'),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text("Bienvenido/a",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.lightBlue[700],
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Metropolis'
                          )
                      ),
                      SizedBox(height: 30.0),
                      Text("Todo lo que necesitas para cuidar de\n tu hogar u oficina y mucho más.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.lightBlue[700],
                            fontSize: 18,
                            fontFamily: 'Metropolis'
                        ),
                      ),
                      SizedBox(height: 40.0),
                      ThemeButton(
                          label: "Iniciar sesión",
                          icon: Icon(Icons.person, color: Colors.white),
                          highlight: Colors.lightBlue,
                          color: Colors.lightBlue,
                          onClick: () async {
                            bool success = await loginService.signInWithGoogle();

                            if(success) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryBottomBar()));
                            }
                          },
                      ),
                      ThemeButton(
                        label: "Hacer recorrido",
                        highlight: Colors.lightBlue[700] as Color,
                        color: Colors.lightBlue,
                        icon: Icon(Icons.arrow_right),
                        onClick: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => OnboardingPage()));
                        },
                      ),
                      ThemeButton(
                        label: "Registrarme",
                        labelColor: Colors.lightBlue,
                        icon: Icon(Icons.person, color: Colors.lightBlue),
                        highlight: Colors.lightBlue.withOpacity(0.5),
                        color: Colors.transparent,
                        borderColor: Colors.lightBlue,
                        borderWidth: 4,
                        onClick: () {}
                      ),
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}