import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool isChanged = false;

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
                "Welcome $name",
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          isChanged = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, Routes.homeRoute);
                      },
                      child: AnimatedContainer(
                        height: 40,
                        width: isChanged ? 60 : 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                            BorderRadius.circular(isChanged ? 40 : 8)),
                        duration: Duration(seconds: 1),
                        child: isChanged
                            ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                            : Text("Login",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    )
                    /* ElevatedButton(
                      onPressed: () {
                        print("Button click");
                        Navigator.pushNamed(context, Routes.homeRoute);
                      },
                      child: Text("Login"),
                      style:
                          TextButton.styleFrom(minimumSize: Size(120.0, 40.0)),
                    )*/
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
