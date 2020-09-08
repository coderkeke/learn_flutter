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
      title: "hello world",
      home: Scaffold(
        appBar: AppBar(
          title: Text("我是标题"),
        ),
        body: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatefulWidget {
  ContentWidget(){
     print("构造函数被调用");
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print("createState被调用");
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget>{
  int counter = 0;

  ContentWidgetState(){
    print("ContentWidgetState构造函数被调用");
  }

  @override
  void initState() {
    // TODO: implement initState
    print("ContentWidgetState的initState被调用");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("ContentWidgetState的didChangeDependencies被调用");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(ContentWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("ContentWidgetState的didUpdateWidget被调用");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("ContentWidgetState的build被调用");
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: (){
              setState(() {
                counter++;
              });
            },
            child: Text("计数加1",style: TextStyle(fontSize: 30)),
          ),
          Text("Hello World：$counter",style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}
