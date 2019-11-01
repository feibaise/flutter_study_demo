import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextDemo",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ButtonPage(),
    );
  }
}

class ButtonPage extends StatefulWidget {
  @override
  ButtonPageState createState() => new ButtonPageState();
}

class ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮demo'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    //返回按钮
                    BackButton(
                      color: Colors.orange,
                    ),
                    //关闭按钮
                    CloseButton(),
                    ButtonBar(
                      children: <Widget>[
                        //扁平化按钮
                        FlatButton(
                          child: Text('FLAT BUTTON',
                              semanticsLabel: 'FLAT BUTTON 1'),
                          onPressed: () {
                            // Perform some action
                          },
                        ),
                        //扁平化禁用状态按钮
                        FlatButton(
                          child: Text(
                            'DISABLED',
                            semanticsLabel: 'DISABLED BUTTON 3',
                          ),
                          onPressed: null,
                        ),
                      ],
                    ),
                    //可以使用图标
                    FlatButton.icon(
                      disabledColor: Colors.teal,
                      label:
                          Text('FLAT BUTTON', semanticsLabel: 'FLAT BUTTON 2'),
                      icon: Icon(Icons.add_circle_outline, size: 18.0),
                      onPressed: () {},
                    ),
                    FlatButton.icon(
                      icon: const Icon(Icons.add_circle_outline, size: 18.0),
                      label: const Text('DISABLED',
                          semanticsLabel: 'DISABLED BUTTON 4'),
                      onPressed: null,
                    ),
                    ButtonBar(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        //有边框轮廓按钮
                        OutlineButton(
                          onPressed: () {},
                          child: Text('data'),
                        ),
                        OutlineButton(
                          onPressed: null,
                          child: Text('data'),
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: <Widget>[
                        //有图标，有边框轮廓按钮
                        OutlineButton.icon(
                          label: Text('OUTLINE BUTTON',
                              semanticsLabel: 'OUTLINE BUTTON 2'),
                          icon: Icon(Icons.add, size: 18.0),
                          onPressed: () {},
                        ),
                        OutlineButton.icon(
                          disabledTextColor: Colors.orange,
                          icon: const Icon(Icons.add, size: 18.0),
                          label: const Text('DISABLED',
                              semanticsLabel: 'DISABLED BUTTON 6'),
                          onPressed: null,
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: <Widget>[
                        //有波纹按下状态的按钮
                        RaisedButton(
                          child: Text('RAISED BUTTON',
                              semanticsLabel: 'RAISED BUTTON 1'),
                          onPressed: () {
                            // Perform some action
                          },
                        ),
                        RaisedButton(
                          child: Text('DISABLED',
                              semanticsLabel: 'DISABLED BUTTON 1'),
                          onPressed: null,
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: <Widget>[
                        //有波纹按下状态有图标的按钮
                        RaisedButton.icon(
                          icon: const Icon(Icons.add, size: 18.0),
                          label: const Text('RAISED BUTTON',
                              semanticsLabel: 'RAISED BUTTON 2'),
                          onPressed: () {
                            // Perform some action
                          },
                        ),
                        RaisedButton.icon(
                          icon: const Icon(Icons.add, size: 18.0),
                          label: Text('DISABLED',
                              semanticsLabel: 'DISABLED BUTTON 2'),
                          onPressed: null,
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: <Widget>[
                        //Material风格Button
                        MaterialButton(
                          child: Text('MaterialButton1'),
                          onPressed: () {
                            // Perform some action
                          },
                        ),
                        MaterialButton(
                          child: Text('MaterialButton2'),
                          onPressed: null,
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: <Widget>[
                        //原始的Button
                        RawMaterialButton(
                          child: Text('RawMaterialButton1'),
                          onPressed: () {
                            // Perform some action
                          },
                        ),
                        RawMaterialButton(
                          child: Text('RawMaterialButton2'),
                          onPressed: null,
                        ),
                      ],
                    ),
                    ButtonBar(
                      children: <Widget>[
                        //悬浮按钮
                        FloatingActionButton(
                          child: const Icon(Icons.add),
                          heroTag: 'FloatingActionButton1',
                          onPressed: () {
                            // Perform some action
                          },
                          tooltip: 'floating action button1',
                        ),
                        FloatingActionButton(
                          child: const Icon(Icons.add),
                          onPressed: null,
                          heroTag: 'FloatingActionButton2',
                          tooltip: 'floating action button2',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
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
  void didUpdateWidget(ButtonPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
