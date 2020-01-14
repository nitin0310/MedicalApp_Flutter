import 'package:flutter/material.dart';

class StackColumn1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 30.0),
                height: 50,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)
                    ))
            ),
          ],

        ),

        Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 30.0),
                height: 50,
                width: 155.0,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)
                    ))
            ),
          ],
        ),

        Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 30.0),
                height: 50,
                width: 130.0,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)
                    ))
            ),
          ],
        ),

        Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 30.0),
                height: 50,
                width: 220.0,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)
                    ))
            ),
          ],
        ),

        Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 30.0),
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)
                    ))
            ),
          ],
        ),
      ],
    );
  }


}