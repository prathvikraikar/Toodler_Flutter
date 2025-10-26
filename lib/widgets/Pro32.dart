import 'package:dsiproject/widgets/Pro33.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro32 extends StatefulWidget {
  Pro24State createState() => Pro24State();
}

TextStyle b =
    TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);
TextStyle a = TextStyle(
  color: Colors.white,
  fontSize: 15,
);
TextStyle c = TextStyle(color: Colors.blue, fontSize: 15);

class Pro24State extends State<Pro32> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro33()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 7, 28, 44),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Icon(
                Icons.menu_sharp,
                color: Colors.blue,
              ),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Text(
                      "Record on toddler",
                      style: b,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Enable access so that you can start taking videos",
                      style: a,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text(
                      "Enable camara Access",
                      style: c,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Enable microphone access",
                      style: c,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
