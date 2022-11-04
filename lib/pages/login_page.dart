import 'package:appname/pages/tempCodeRunnerFile.dart';
import 'package:appname/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(children: [
        Image.asset(
          "assets/images/login_image.png",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          "Welcome",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter username",
                    labelText: "username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter password",
                    labelText: "password",
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(
                  child: const Text("Login"),
                  style: TextButton.styleFrom(
                      minimumSize:
                          Size(150, 40)), //setting height and width of button
                  onPressed: () {
                    Navigator.pushNamed(
                        context,
                        MyRoutes
                            .homeRoute); //to go from login page to homepage on pressing login button
                  },
                )
              ],
            ))
      ]),
    ));
  }
}
