import 'package:flutter/material.dart';

// main(List<String> args) {
//   runApp(MyApp());
// }

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: Text("我是标题"),
        ),
        body: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextWidget(),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello World2",
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 30, color: Colors.orange),
    );
  }
}
