import 'package:flutter/material.dart';

class AppBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScaffoldDemo",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AppBarPage(),
    );
  }
}

class AppBarPage extends StatefulWidget {
  @override
  AppBarPageState createState() => new AppBarPageState();
}

class AppBarPageState extends State<AppBarPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Widget'),
        primary: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
          IconButton(icon: Icon(Icons.add), onPressed: () {}),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              PopupMenuItem<String>(
                child: Text("热度"),
                value: "hot",
              ),
              PopupMenuItem<String>(
                child: Text("最新"),
                value: "new",
              ),
            ],
            onSelected: (String action) {
              switch (action) {
                case "hot":
                  print("hot");
                  break;
                case "new":
                  print("new");
                  break;
              }
            },
            onCanceled: () {
              print("onCanceled");
            },
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              text: "Tab1",
              icon: Icon(Icons.battery_full),
            ),
            Tab(
              text: "Tab2",
              icon: Icon(Icons.add),
            ),
            Tab(
              text: "Tab3",
              icon: Icon(Icons.card_giftcard),
            ),
            Tab(
              text: "Tab4",
              icon: Icon(Icons.shop),
            ),
            Tab(
              text: "Tab5",
              icon: Icon(Icons.directions_bike),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Text("data1"),
          ),
          Center(
            child: Text("data2"),
          ),
          Center(
            child: Text("data3"),
          ),
          Center(
            child: Text("data4"),
          ),
          Center(
            child: Text("data5"),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(AppBarPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
