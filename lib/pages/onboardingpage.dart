
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myworkspace/helpers/iconhelper.dart';
import 'package:myworkspace/helpers/utils.dart';
import 'package:myworkspace/models/onboardingcontent.dart';
import 'package:myworkspace/widgets/categorybottombar.dart';
import 'package:myworkspace/widgets/iconfont.dart';
import 'package:myworkspace/widgets/mainappbar.dart';
import 'package:myworkspace/widgets/themebutton.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<OnboardingContent> _content = Utils.getOnboarding();
  int pageIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (int page){
                  setState(() {
                    pageIndex = page;
                  });
                },
                children: List.generate(
                    _content.length,
                    (index) =>
                     Container(
                       padding: EdgeInsets.all(50),
                       margin: EdgeInsets.only(left: 40, right: 40, top: 40, bottom: 20),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(50),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.lightBlue.withOpacity(0.3),
                             blurRadius: 20,
                             offset: Offset.zero
                           )
                         ]
                       ),
                       child: Column(
                         children: [
                           Expanded(
                             child: Column(
                               children: [
                                 Align(
                                   alignment: Alignment.topRight,
                                   child: IconFont(
                                       color: Colors.lightBlue,
                                       size: 40,
                                       iconName: IconFontHelper.LOGO
                                   ),
                                 ),
                                 Image.asset("assets/images/${_content[index].img}.png"),
                                 SizedBox(height: 40),
                                 Text(_content[index].message,
                                   textAlign: TextAlign.center,
                                   style: TextStyle(
                                       color: Colors.lightBlue,
                                       fontSize: 20
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           Visibility(
                             visible: index == _content.length - 1,
                             child: ThemeButton(
                               onClick: () {
                                   Navigator.push(context,
                                       MaterialPageRoute(builder: (context) => CategoryBottomBar()));
                               },
                               label: "Entrar ahora",
                               color: Colors.blue,
                               highlight: Colors.blue,
                               icon: Icon(Icons.arrow_right)
                             ),
                           )
                         ],
                       )
                     )
                ),
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _content.length,
                (index) =>
                 GestureDetector(
                   onTap: () {
                     _controller.animateTo(
                       MediaQuery.of(context).size.width * index,
                       duration: Duration(milliseconds: 500),
                       curve: Curves.easeInOut
                     );
                   },
                   child: Container(
                     width: 20,
                     height: 20,
                     margin: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       color: Colors.lightBlue,
                       borderRadius: BorderRadius.circular(50),
                       border: Border.all(
                         width: 6,
                         color: pageIndex == index ? Color(0x33575AFF) : Theme.of(context).canvasColor
                       )
                     ),
                   ),
                 )
                )
              ),
            SizedBox(height: 20),
            ThemeButton(
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CategoryBottomBar()));
              },
              label: "Saltar",
              icon: Icon(Icons.arrow_right),
            )
          ],
        ),
      ),
    );
  }
}