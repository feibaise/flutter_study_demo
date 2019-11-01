import 'package:flutter/material.dart';

class ScaffoldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScaffoldDemo",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ScaffoldPage(),
    );
  }
}

class ScaffoldPage extends StatefulWidget {
  @override
  ScaffoldPageState createState() => new ScaffoldPageState();
}

class ScaffoldPageState extends State<ScaffoldPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold案例'),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          //container 布局
          Container(
            constraints: BoxConstraints.expand(
              height:
                  Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
            ),
            padding: const EdgeInsets.all(8.0),
            // 背景色
            color: Colors.teal.shade700,
            // 子Widget居中
            alignment: Alignment.center,
            // 子Widget元素
            child: Text('Hello World',
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .copyWith(color: Colors.white)),
            // 前景装饰
            foregroundDecoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://www.example.com/images/frame.png'),
                centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
              ),
            ),
            // Container旋转
            transform: Matrix4.rotationZ(0.1),
          ),
          //Center布局
          Column(
            children: <Widget>[
              Container(
                color: Colors.blueGrey,
                child: Center(
                  widthFactor: 2,
                  heightFactor: 2,
                  child: Container(
                    width: 60,
                    height: 30,
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 60,
                  height: 30,
                  color: Colors.teal,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.yellow,
                  child: Align(
                    // 设置对齐位置约束
                    alignment: FractionalOffset(0.2, 0.6),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      //抽屉
      drawer: Drawer(
        child: DrawerHeader(
          child: Text("抽屉头部"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('Cagergory')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Persion')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTap,
      ),
      //按钮
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _onAdd();
        },
      ),
    );
  }

  //切换
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd() {}

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
  void didUpdateWidget(ScaffoldPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
