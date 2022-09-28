import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/screens/first_page.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  String Email = "rola@gmail.com";
  String Bass = "123456";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 228, 171, 240),
        title: Icon(
          Icons.login,
          color: Color.fromARGB(255, 164, 6, 179),
        ),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 228, 171, 240),
          child: Container(
            child: Column(
              children: [
                Divider(
                  height: 99,
                  color: Color.fromARGB(255, 228, 171, 240),
                ),
                Row(
                  children: [
                    Text(
                      "Welcome back ",
                      style: TextStyle(
                          fontSize: 50,
                          color: Color.fromARGB(255, 245, 239, 244),
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          wordSpacing: 20,
                          letterSpacing: 10),
                    ),
                    Icon(
                      Icons.face,
                      size: 55,
                      color: Color.fromARGB(255, 189, 60, 214),
                    )
                  ],
                ),
                Divider(
                  height: 20,
                  color: Color.fromARGB(255, 228, 171, 240),
                ),
                Divider(
                  height: 20,
                  color: Color.fromARGB(255, 228, 171, 240),
                ),
                Padding(padding: EdgeInsets.all(30)),
                TextField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    label: Text(
                      "Email :",
                      style: TextStyle(
                        color: Color.fromARGB(255, 245, 239, 244),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    prefixIcon: Icon(Icons.email),
                    hintText: " enter your email",
                    prefixIconColor: Color.fromARGB(255, 164, 6, 179),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 30, color: Color.fromARGB(255, 164, 6, 179)),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gapPadding: 20),
                  ),
                ),
                Divider(
                  height: 20,
                  color: Color.fromARGB(255, 228, 171, 240),
                ),
                Padding(padding: EdgeInsets.all(30)),
                TextField(
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    label: Text(
                      " Password :",
                      style: TextStyle(
                        color: Color.fromARGB(255, 245, 239, 244),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    prefixIcon: Icon(Icons.email),
                    hintText: "enter your password",
                    prefixIconColor: Color.fromARGB(255, 164, 6, 179),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 30, color: Color.fromARGB(255, 164, 6, 179)),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gapPadding: 20),
                  ),
                ),
                Divider(
                  height: 30,
                  color: Color.fromARGB(255, 228, 171, 240),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 228, 171, 240)),
                    onPressed: () {
                      if (Email == true && Bass == true) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return First();
                        })));
                      } else {
                        AlertDialog(
                          title: Text(
                              "The email or password is invalid. Please check and try again."),
                        );
                      }
                    },
                    child: Text(
                      "Enter",
                      style: TextStyle(
                        color: Color.fromARGB(255, 245, 239, 244),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
