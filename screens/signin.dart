import 'package:flutter/material.dart';
import 'package:flutter_application_drawer/screens/home_page.dart';
import 'package:flutter_application_drawer/screens/sign_up.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formkey = GlobalKey<FormState>();

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
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Username'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          TextFormField(
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
          ElevatedButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('proccessing data')),
                  );
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
              },
              child: Text('Sign in')),
          Column(
            children: [
              Text('dont have an account?'),
              TextButton(
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => account()),
                  );
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
    ));
  }
}
