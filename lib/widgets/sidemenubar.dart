import 'package:flutter/material.dart';
import 'package:myworkspace/pages/welcomepage.dart';
import 'package:myworkspace/services/loginservice.dart';
import 'package:provider/provider.dart';

import 'categorybottombar.dart';

class SideMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    LoginService loginService = Provider.of<LoginService>(context, listen: false);
    bool userLoggedIn = loginService.loggedInUserModel != null;

    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(50),
            color: Colors.lightBlue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextButton(
                        onPressed: () async {
                          if (userLoggedIn) {
                            await loginService.signOut();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WelcomePage()
                                )
                            );
                            //Utils.mainAppNav.currentState!.pushReplacementNamed('/welcomepage');
                          }
                          else {
                            bool success = await loginService.signInWithGoogle();
                            if (success) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryBottomBar()));
                            }
                          }
                        },
                        child: Row(
                          children: [
                            Icon(userLoggedIn ? Icons.logout : Icons.login, color: Colors.white, size: 20),
                            SizedBox(width: 10),
                            Text(userLoggedIn ? 'Cerrar sesión' : 'Iniciar sesión',
                                style: TextStyle(color: Colors.white, fontSize: 20)
                            )
                          ],
                        )
                    ),
                    SizedBox(height: 10),
                    Visibility(
                        visible: !userLoggedIn,
                        child: TextButton(
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WelcomePage()
                                  )
                              );
                            },
                            child: Row(
                              children: [
                                Icon(Icons.home, color: Colors.white, size: 20),
                                SizedBox(width: 10),
                                Text('Bienvenido/a',
                                    style: TextStyle(color: Colors.white, fontSize: 20)
                                )
                              ],
                            )
                        )
                    )
                  ],
                ),
                ClipOval(
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.lightBlue,
                    child: Image.asset('assets/images/MainLogo.png'),
                  ),
                ),
              ],
            )
        )
    );
  }

}