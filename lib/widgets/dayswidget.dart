import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnitPriceWidget extends StatefulWidget {

  int days = 0;

  @override
  UnitPriceWidgetState createState() => UnitPriceWidgetState();
}

class UnitPriceWidgetState extends State<UnitPriceWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text.rich(
              TextSpan(
                  children: [
                    TextSpan(text: "Seleccione no. de días para el trabajo: "),
                    TextSpan(text: "Días ", style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "(max. 20)", style: TextStyle(fontSize: 12))
                  ]
              )
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset.zero,
                    color: Colors.black.withOpacity(0.1)
                )
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: widget.days < 20 ? () {
                  setState(() {
                    widget.days++;
                    //widget.cost = widget.price * widget.days;
                  });
                } : null,
                child: Icon(Icons.add_circle_outline,
                  size: 50,
                  color: Colors.lightBlue,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Center(
                    child: Text.rich(
                        TextSpan(
                            children: [
                              TextSpan(text: widget.days.toString(), style: TextStyle(fontSize: 40)),
                              TextSpan(text: "Días.", style: TextStyle(fontSize: 20))
                            ]
                        )
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: widget.days > 0 ? () {
                    setState(() {
                      widget.days--;
                      //widget.cost = widget.price * widget.days;
                    });
                  } : null,
                  child: Icon(Icons.remove_circle_outline, size: 50, color: Colors.grey)
              )
            ],
          ),
        ),
        Padding(padding: const EdgeInsets.all(20))
        /*
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(text: "Precio: "),
                        TextSpan(text: "\$${widget.price} / lb",
                            style: TextStyle(fontWeight: FontWeight.bold)
                        )
                      ]
                  )
              ),
              Text("\$${widget.cost}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
        */
      ],
    );
  }
}