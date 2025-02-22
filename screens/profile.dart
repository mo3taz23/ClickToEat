import 'package:flutter/material.dart';
import 'package:clickToEat_main/drawer/drawer.dart';
import 'package:clickToEat_main/screens/signin.dart';
import 'package:clickToEat_main/models/user.dart';
import 'package:clickToEat_main/screens/editProfile.dart';

// ignore: camel_case_types
class profile extends StatelessWidget {
  User? user;
  profile(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            Image.asset(
              'image/diamond.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            Text('Welocome' + user!.name),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => editProfile()));
                },
                child: Text("Edit")),
          ],
        ));
  }
}
