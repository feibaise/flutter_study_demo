import 'package:flutter/material.dart';

import 'AlerDialogTest.dart';

class AlertDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "弹窗提示框",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AlertDialogPage(),
    );
  }
}

class AlertDialogPage extends StatefulWidget {
  @override
  AlertDialogPageState createState() => new AlertDialogPageState();
}

class AlertDialogPageState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('提示框测试'),
      ),
      body: Container(
          child: ButtonBar(
        children: <Widget>[
          //扁平化按钮
          FlatButton(
            child: Text('FLAT BUTTON', semanticsLabel: 'FLAT BUTTON 1'),
            onPressed: () {
//                dialog1(context);
//                officialDialog2(context);
//                dialog3(context);
//                dialog4(context);
              dialog6(context);
            },
          ),
          //扁平化禁用状态按钮
        ],
      )),
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
  void didUpdateWidget(AlertDialogPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
