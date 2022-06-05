import 'package:e_com/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/ic_login.png"),
              SizedBox(
                height: 24,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("Button click");
                        Navigator.pushNamed(context, Routes.homeRoute);
                      },
                      child: Text("Login"),
                      style:
                      TextButton.styleFrom(minimumSize: Size(120.0, 40.0)),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
