import 'package:dsiproject/widgets/Pro2-3.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    //   // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => loginscreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 300)),
                  Image.asset("assets/child-1.png",
                      color: Colors.blue.shade300),
                  Positioned(
                    top: 6,
                    left: 6,
                    right: 6,
                    bottom: 3,
                    child: Image.asset(
                      "assets/child.png",
                      color: Color.fromARGB(255, 10, 27, 41),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/todler.png",
                  color: Colors.blue,
                ),
                Positioned(
                  left: 5,
                  child: Image.asset(
                    "assets/todler1.png",
                    color: Color.fromARGB(255, 6, 35, 58),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loginscreen()),
                    );
                  },
                  style: ButtonStyle(),
                  child: Text("Log in"),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                IconButton(
                  onPressed: () {},
                  tooltip: "Text",
                  icon: Image.asset("assets/search.png"),
                  style: ButtonStyle(),
                ),
                Text(
                  "Google",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              width: 400,
              height: 100,
              color: Colors.blue.shade200,
              child: Center(child: Text("Don't have an Account? Sign Up")),
            ),
          ],
        ),
      ),
    );
  }
}
