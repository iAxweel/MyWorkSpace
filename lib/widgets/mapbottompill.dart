import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myworkspace/models/subcategory.dart';

import 'categoryicon.dart';

class MapBottomPill extends StatelessWidget {
  MapBottomPill({
    Key? key, this.subCategory
  }) : super(key: key);

  SubCategory? subCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset.zero
            )
          ]
      ),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipOval(
                      child: Image.asset("assets/images/${this.subCategory!.imgName}.jpg",
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: -10,
                      right: -10,
                      child: CategoryIcon(
                        color: Colors.lightBlue,
                        iconName: this.subCategory!.icon,
                        size: 20,
                        padding: 5,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(this.subCategory!.name,
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                      ),
                      Text("No. de celular: 4436789076"),
                      Text("2km de distancia",
                        style: TextStyle(
                            color: Colors.lightBlue
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.location_pin, color: Colors.red, size: 50),
              ],
            ),
          ),
          Container(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage("assets/images/user2.jpg"),
                              fit: BoxFit.cover
                          ),
                          border: Border.all(color: Colors.lightBlue, width: 4),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("José Gonzalez",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Autopista Duarte\nCarretera Duarte Vieja #225")
                        ],
                      )
                    ],
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}