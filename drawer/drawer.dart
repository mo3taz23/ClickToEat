import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Abdelrahman ehab'),
          accountEmail: Text('Omar@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: ExactAssetImage('assets/images/ic_burger.png'),
          ),
          otherAccountsPictures: <Widget>[],
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/blue.jpg'),
                  fit: BoxFit.cover)),
        ),
        ListTile(
          title: Text('Home'),
          leading: Icon(Icons.home),
          onTap: () {},
        ),
        ListTile(
          title: Text('Profile'),
          leading: Icon(Icons.person),
        ),
        ListTile(
          title: Text('Favorites'),
          leading: Icon(Icons.favorite),
          onTap: () {},
        ),
        ListTile(
          title: Text('Orders'),
          leading: Icon(Icons.shopping_basket_outlined),
          onTap: () {},
        ),
        ListTile(
          title: Text('Cart'),
          leading: Icon(Icons.shopping_cart),
          onTap: () {},
        ),
        ListTile(
          title: Text('About us'),
          leading: Icon(Icons.support_agent),
          onTap: () {},
        ),
        ListTile(
          title: Text('Logout'),
          leading: Icon(Icons.logout),
          onTap: () {},
        ),
      ]),
    );
  }
}
