import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextDemo",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: TextPage(),
    );
  }
}

class TextPage extends StatefulWidget {
  @override
  TextPageState createState() => new TextPageState();
}

class TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextDemo'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Text最简单用法'),
            Text('Text Widget',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  decoration: TextDecoration.none,
                )),
            Text('放大加粗文字',
                textDirection: TextDirection.rtl,
                textScaleFactor: 1.2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                )),
            Text(
                '可以缩放自动换行的文字，可以缩放自动换行的文字，可以缩放自动换行的文字，可以缩放自动换行的文字，可以缩放自动换行的文字，可以缩放自动换行的文字',
                textScaleFactor: 1.0,
                textAlign: TextAlign.center,
                softWrap: true,
                //渐隐、省略号、裁剪
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                )),
            Text.rich(TextSpan(
              text: 'TextSpan',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30.0,
                decoration: TextDecoration.none,
              ),
              children: <TextSpan>[
                new TextSpan(
                  text: '拼接1',
                  style: new TextStyle(
                    color: Colors.teal,
                  ),
                ),
                new TextSpan(
                  text: '拼接2',
                  style: new TextStyle(
                    color: Colors.teal,
                  ),
                ),
                new TextSpan(
                  text: '拼接3有点击事件',
                  style: new TextStyle(
                    color: Colors.yellow,
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () {
                      //增加一个点击事件
                      print(
                          '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
                    },
                ),
              ],
            )),
            RichText(
              text: TextSpan(
                text: 'Hello ',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: 'bold',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none)),
                  TextSpan(
                      text: ' world!',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(TextPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
