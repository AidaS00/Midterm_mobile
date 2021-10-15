import 'package:flutter/material.dart';
import 'package:midterm_mobile/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var itemList;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.notifications_none, color: Colors.white),
          onPressed: () {},
        ),
        title: Text('Профиль',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Column(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          child: Text(
                            "Имя",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black54
                            ),
                          ),
                        )
                    ),
                    Column (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 5, right: 20, bottom: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Курьер',
                              fillColor: Color(0xffeff2f7),
                              filled: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          child: Text(
                            "Телефон",
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.black54
                            ),
                          ),
                        )
                    ),
                    Column (
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 5, right: 20, bottom: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '+7077077777',
                              fillColor: Color(0xffeff2f7),
                              filled: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ElevatedButton(onPressed: (){

                },
                  child: Text('История добавления товара'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                      padding: MaterialStateProperty.all(const EdgeInsets.all(50)),
                      textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 30))),
                )
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(Icons.qr_code),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),


    );
  }
}
