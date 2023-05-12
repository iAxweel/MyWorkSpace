import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myworkspace/models/categoryworker.dart';
import 'package:myworkspace/models/subcategory.dart';

class CategoryWorkersList extends StatefulWidget {

  SubCategory subCategory;

  CategoryWorkersList ({ required this.subCategory});
  @override
  CategoryWorkersListState createState() => CategoryWorkersListState();
}

class CategoryWorkersListState extends State<CategoryWorkersList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Text("Seleccione alguno de los trabajadores disponibles: ",
          ),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.subCategory.workers.length,
            itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                onTap: () {
                  setState(() {
                    widget.subCategory.workers.forEach((CategoryWorker worker) {
                      worker.isSelected = widget.subCategory.workers[index] == worker;
                    });
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 120,
                      height: 150,
                      decoration: BoxDecoration(
                          border: widget.subCategory.workers[index].isSelected ?
                          Border.all(color: widget.subCategory.color, width: 7)
                              : null,
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: AssetImage("assets/images/" +
                                  widget.subCategory.workers[index].imgName + ".jpg"
                              ), fit: BoxFit.cover
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset.zero,
                                blurRadius: 10
                            )
                          ]
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 25),
                        child: Text(widget.subCategory.workers[index].name,
                          textAlign: TextAlign.left,
                          style: TextStyle(color: widget.subCategory.color),
                        )
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}