import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Chat(String message, int data) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Row(
      mainAxisAlignment:
          data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        data == 0
            ? Container(
                height: 40,
                width: 40,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/lina.png"),
                ),
              )
            : Container(),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Bubble(
              margin: BubbleEdges.only(top: 10),
              nipWidth: 8,
              nipHeight: 24,
              radius: Radius.circular(50),
              color: data == 0
                  ? Color.fromARGB(255, 231, 225, 225)
                  : Colors.lightBlueAccent,
              elevation: 0.0,
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                        child: Container(
                      constraints: BoxConstraints(maxWidth: 200),
                      child: Text(message,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          )),
                    ))
                  ],
                ),
              )),
        ),
        data == 1
            ? Container(
                height: 40,
                width: 40,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/default.jpg"),
                ),
              )
            : Container(),
      ],
    ),
  );
}
