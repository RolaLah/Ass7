import 'package:flutter/material.dart';
import 'package:myapp/screens/Login.dart';
import 'package:myapp/screens/Signup.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 228, 171, 240),
        title: Icon(
          Icons.home,
          color: Color.fromARGB(255, 164, 6, 179),
        ),
        shadowColor: Colors.blueGrey,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVcRxNPzrAE7n9f-clqVdvknLLQHb130HzbQ&usqp=CAU"))),
        child: Column(
          children: [
            Divider(
              color: Color.fromARGB(240, 255, 255, 255),
              height: 110,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return Login_page();
                    })));
                  });
                },
                icon: Icon(Icons.login),
                label: Text(
                  "Log In   ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 164, 6, 179), fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 228, 171, 240))),
            Divider(
              color: Color.fromARGB(240, 255, 255, 255),
              height: 30,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return Signup_page();
                    })));
                  });
                },
                icon: Icon(Icons.info),
                label: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Color.fromARGB(255, 164, 6, 179), fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 228, 171, 240))),
          ],
        ),
      ),
    );
  }
}
