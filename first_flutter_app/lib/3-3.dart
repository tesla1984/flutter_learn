import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本以及样式"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            "Hello world" * 10,
            textAlign: TextAlign.left,
          ),
          Text(
            "Hello world! I'm Jack. " * 4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Hello world",
            textScaleFactor: 1.5,
          ),
          Text(
            "Hello world",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              height: 1.2,
              fontFamily: "Courier",
              background: Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed
            )
          ),
          Text.rich(TextSpan(
            children: [
              TextSpan(
                text: "Home:"
              ),
              TextSpan(
                text: "https://flutterchina.com",
                style: TextStyle(
                  color: Colors.blue
                ),

              )
            ]
          )),
          DefaultTextStyle(
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Hello world"),
                Text("I am jack"),
                Text("I am Jack",
                style: TextStyle(
                  inherit: false,//不继承默认样式
                  color: Colors.grey
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
