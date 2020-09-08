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
      home:Scaffold(
          appBar: AppBar(
            title: Text("我是标题"),
          ),
          body: ContentWidget(),
        ),
    );
  }
}

class ContentWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: LoginWidget(),
    );
  }
}

class LoginWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return LoginWidgetState();
  }
}

class LoginWidgetState extends State<LoginWidget>{
  String username;
  String password;

  GlobalKey<FormState> fromGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: fromGlobalKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: "用户名"
            ),
            onSaved: (value){
              this.username = value;
            },
            autovalidate: true,
            validator: (value){
              if(value == null || value.length ==0){
                return "用户名不能为空";
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: "密码"
            ),
            onSaved: (value){
              password = value;
            },
            autovalidate: true,
            validator: (value){
              if(value == null || value.length ==0){
                return "密码不能为空";
              }
              return null;
            },
          ),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 44,
            child: RaisedButton(
              child: Text("登陆",style: TextStyle(fontSize: 20,color: Colors.white),),
              color: Colors.blueAccent,
              onPressed: (){
                print("注册按钮被点击");
                fromGlobalKey.currentState.save();
//                fromGlobalKey.currentState.validate();
                print("username：$username password：$password");
              },
            ),
          )
        ],
      ),
    );
  }
}


class RegisterWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterWidgetState();
  }
}


class RegisterWidgetState extends State<RegisterWidget>{
  final textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.text="我是默认值";
    textEditingController.addListener(() {
        print("值改变 ${textEditingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.phone),
              labelText: "username",
              labelStyle: TextStyle(
                color: Colors.white
              ),
              hintText: "请输入用户名",
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2
                )
              ),
              filled: true,
              fillColor: Colors.lightBlueAccent
            ),
            onChanged: (value){
              print(value);
            },
            onSubmitted: (value){
              print("当前提交的值：$value");
            },
            controller: textEditingController,
          )
        ],
      ),
    );
  }
}




class ClipRRectImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          "https://imgchr.com/content/images/system/home_cover_1599498981667_fc2468.jpg",
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}


class ClipOvalImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ClipOval(
      child: Image.network(
        "https://imgchr.com/content/images/system/home_cover_1599498981667_fc2468.jpg",
        width: 150,
        height: 150,
      ),
    );
  }
}


class LocalImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.asset("assets/images/home_cover.jpg");
  }
}

class NetworkImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.red,
        child: Image.network(
            "https://imgchr.com/content/images/system/home_cover_1599498981667_fc2468.jpg",
//            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
        ),
      ),
    );
  }

}


class CustomButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        color: Colors.red,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.phone_android,color: Colors.white),
            SizedBox(width: 10,),
            Text("我是按钮",style: TextStyle(fontSize: 20,color: Colors.white)),
          ],
        ),
        onPressed: ()=>print("按钮被点击"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}



class ButtonDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("RaisedButton"),
          onPressed: ()=>print("RaisedButton"),
        ),
        FlatButton(
          child: Text("FlatButton"),
          onPressed: ()=>print("FlatButton"),
        ),
        OutlineButton(
          child: Text("OutlineButton"),
          onPressed: ()=>print("OutlineButton"),
        ),
        FloatingActionButton(
          child: Text("FloatingActionButton"),
          onPressed: ()=>print("FloatingActionButton"),
        ),
      ],
    );
  }
}



class ContentWidget1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Text.rich(
        TextSpan(
          children: [
            TextSpan(
                text:"《定风波》",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                )
            ),
            TextSpan(
               text: "三点",
               style:  TextStyle(fontSize: 18)
            ),
            TextSpan(
              text: "\n撒嬌看的那款三大緑卡，阿達達的撒操作。\n撒嬌看的那款三大緑卡，阿達達這些操作。\n撒嬌看的三大緑卡，阿達達的撒這些操作。\n撒嬌看的三大緑卡，阿達達的撒這些操作。"
                  ,style: TextStyle(fontSize: 20,color: Colors.purple)
            )
          ]
      ),
      textAlign: TextAlign.center,
    );
  }
}


class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Text(
      "内内容内容2\n容内容内容内容内ssss容ssadsadsadsad内1容21321",
      style: TextStyle(
          fontSize: 20,
          color: Color(0xffff0000)
      ),
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 2,
    );
  }
}