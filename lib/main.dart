import 'package:flutter/material.dart';

// main(List<String> args) {
//   runApp(MyApp());
// }

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("coder keke"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          ProductItem(
              "图片1", "456", "https://s1.ax1x.com/2020/09/03/wCbvS1.jpg"),
          ProductItem(
              "图片2", "456", "https://s1.ax1x.com/2020/09/03/wCbvS1.jpg"),
          ProductItem(
              "图片3", "456", "https://s1.ax1x.com/2020/09/03/wCbvS1.jpg"),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageURL;

  ProductItem(this.title, this.subtitle, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(width: 2)),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 24),
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 20,
          ),
          Image.network(imageURL),
        ],
      ),
    );
  }
}
