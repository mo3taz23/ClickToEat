import 'package:clickToEat_main/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:clickToEat_main/screens/home_page.dart';
import 'package:clickToEat_main/screens/signin.dart';
import 'package:clickToEat_main/models/user.dart';

class editProfile extends StatefulWidget {
  const editProfile({Key? key}) : super(key: key);

  @override
  _editProfile createState() => _editProfile();
}

class _editProfile extends State<editProfile> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          AppBar(),
          SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(hintText: 'Click To Eat'),
              style: TextStyle(fontSize: 40, height: 2),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 1,
          ),
          TextFormField(
            controller: name,
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: 'Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your Name';
              }
              return null;
            },
          ),
          TextFormField(
            controller: password,
            decoration: InputDecoration(
                hintText: 'password', border: OutlineInputBorder()),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter password';
              } else if (int.parse(value) < 8) {
                return 'Please enter a password longer than 8 characters';
              }
              return null;
            },
          ),
          TextFormField(
            controller: email,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          TextFormField(
            controller: userName,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Username'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your username';
              }
              return null;
            },
          ),
          TextFormField(
            controller: phoneNumber,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Phone number'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
              return null;
            },
          ),
          ElevatedButton(
              onPressed: () {
                User user = User(
                  name.text,
                  password.text,
                  email.text,
                  userName.text,
                  int.parse(phoneNumber.text),
                );

                if (_formkey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Password')),
                  );
                  Navigator.pop(context);
                }
              },
              child: Text('Save')),
        ],
      ),
    ));
  }
}
