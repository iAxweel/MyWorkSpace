import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {

  String label;
  Function onClick;
  Color color;
  Color highlight;
  Widget icon;
  Color borderColor;
  Color labelColor;
  double borderWidth;

  ThemeButton({
    required this.label,
    this.labelColor = Colors.white,
    this.color = Colors.lightBlue,
    this.highlight = Colors.lightBlue,
    required this.icon,
    this.borderColor = Colors.transparent,
    this.borderWidth = 4,
    required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Material(
            color: this.color,
            child: InkWell(
                splashColor: this.color.withOpacity(0.2),
                highlightColor: this.color.withOpacity(0.2),
                onTap: () {
                  this.onClick();
                },
                child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Colors.lightBlue,
                            width: 4
                        )
                    ),
                  child: this.icon == null ?
                      Text(this.label,
                        style: TextStyle(
                          fontSize: 16,
                          color: this.labelColor,
                          fontWeight: FontWeight.bold)) :
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          this.icon,
                          SizedBox(width: 10),
                          Text(this.label,
                            style: TextStyle(
                              fontSize: 16,
                              color: this.labelColor,
                              fontWeight: FontWeight.bold)),
                        ],
                      )
                )
            )
        ),
      ),
    );
  }
}