import 'package:cars_shop_app/list_of_tab_views_items.dart';
import 'package:cars_shop_app/tabs.dart';
import 'package:flutter/material.dart';

class WhiteTabBarView extends StatefulWidget {
  const WhiteTabBarView({Key? key}) : super(key: key);

  @override
  _WhiteTabBarViewState createState() => _WhiteTabBarViewState();
}

class _WhiteTabBarViewState extends State<WhiteTabBarView>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  TextStyle textStyleFocused = new TextStyle(color: Colors.black, fontSize: 20);
  TextStyle textStyleUnFoucsed =
      new TextStyle(color: Colors.grey, fontSize: 15);
  Tabs tabs = Tabs();
  @override
  Widget build(BuildContext context) {
    tabs.clearTheTabs();
    tabs.addStrings();
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          labelColor: Colors.black,
          labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.grey,
          unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 15),
          controller: _tabController,
          tabs: [
            Text(tabs.getListOfString()[0]),

            Text(
              tabs.getListOfString()[1],
            ),
            Text(
              tabs.getListOfString()[2],
            ),
            // TabBarView(children: [])
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          child: TabBarView(controller: _tabController, children: [
            ListOfTabViewItems(),
            ListOfTabViewItems(),
            ListOfTabViewItems(),
          ]),
        )
      ],
    );
  }
}
