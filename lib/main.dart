import 'package:flutter/material.dart';

// main(List<String> args) {
//   runApp(MyApp());
// }

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: Text("我是标题"),
        ),
        body: ContentWidget(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print(1231);
          },
        ),
      ),
    );
  }
}

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  print("按钮点击");
                  setState(() {
                    counter++;
                  });
                },
                child: Text("计数+1"),
              ),
              RaisedButton(
                onPressed: () {
                  print("按钮点击");
                  setState(() {
                    counter--;
                  });
                },
                child: Text("计数-1"),
              ),
            ],
          ),
          Text(
            "当前计数: $counter",
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}

//无法实现
class ContentWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              print("按钮点击");
            },
            child: Text("计数+1"),
          ),
          Text(
            "当前计数: 0",
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
