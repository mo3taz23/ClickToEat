import 'package:flutter/material.dart';
import 'package:flutter_application_drawer/widgets/popular_food.dart';
import 'package:flutter_application_drawer/widgets/search_widget.dart';
import 'package:flutter_application_drawer/widgets/top_menus.dart';
import 'package:flutter_application_drawer/drawer/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
          ],
        ),
      ),
    );
  }
}
