import 'package:appname/pages/tempCodeRunnerFile.dart';
import 'package:appname/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
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
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(children: [
                  TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter username",
                        labelText: "username",
                      ),
                      onChanged: (value) {
                        name = value;
                        // Test Commit
                        // Commit Test
                        setState(() {
                          //calling buildwidget again(will not work in stateless widget)
                        });
                      }),
                ])),
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
            Material(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(changeButton ? 20 : 8),
              child: InkWell(
                splashColor: Colors.red,
                onTap: () async {
                  setState(() {
                    //To change the state
                    changeButton = true;
                  }); //make button pushable
                  await Future.delayed(
                      Duration(seconds: 1)); //makes process to wait for 1 sec
                  Navigator.pushNamed(
                      context,
                      MyRoutes
                          .homeRoute); //to go from login page to homepage on pressing login button
                },
                child: AnimatedContainer(
                  //container is just an empty box
                  duration: Duration(
                      seconds: 1), //amount of time for which animation will run
                  width: changeButton
                      ? 50
                      : 150, //conditional statement changes size of login button from 150 to 50 if condition true
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
