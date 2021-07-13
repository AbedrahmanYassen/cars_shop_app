import 'package:cars_shop_app/horizental_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'white_tab_bar_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
          )),
      home: ShopHomePage(),
    );
  }
}

class ShopHomePage extends StatefulWidget {
  const ShopHomePage({Key? key}) : super(key: key);

  @override
  _ShopHomePageState createState() => _ShopHomePageState();
}

class _ShopHomePageState extends State<ShopHomePage> {
  TextStyle style = new TextStyle(
      color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold);
  TextEditingController _textEditingController = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/character.jpg'),
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('SEARCH FOR', style: style),
                    Text(
                      'RECIPES',
                      style: style,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 15,
                ),
                child: Container(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  color: Colors.black12,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  'Recommended',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: const HorizentalListView(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: const WhiteTabBarView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
