import 'dart:ui';

import 'package:dsiproject/widgets/Pro25.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro24 extends StatefulWidget {
  Pro24State createState() => Pro24State();
}

class Pro24State extends State<Pro24> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro25()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // Original image
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                "assets/childbed.png",
                fit: BoxFit.fill,
              ),
            ),
            // Apply blur effect using BackdropFilter
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            Positioned(
              left: 16.0,
              top: 16.0,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_circle_left_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Handle menu icon press
                },
              ),
            ),
            Positioned(
              right: 16.0,
              top: 16.0,
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Handle notification icon press
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              left: 30,
              bottom: 70,
              top: 70,
              child: Container(
                child: Image.asset(
                  "assets/childbed.png",
                  fit: BoxFit.fitWidth,
                  width: 350,
                ),
              ),
            ),
            Positioned(
              right: 16.0,
              top: 400.0,
              child: Column(
                children: [
                  IconButton(
                    icon: Container(
                      width: 60,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage("assets/avatar1.png"),
                      ),
                    ),
                    onPressed: () {
                      // Handle notification icon press
                    },
                  ),
                  SizedBox(height: 8.0),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.heart),
                    onPressed: () {
                      // Handle settings icon press
                    },
                  ),
                  Text("812"),
                  SizedBox(height: 8.0),
                  IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
                  Text("234"),
                  SizedBox(height: 8.0),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.share),
                    onPressed: () {
                      // Handle settings icon press
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 260,
        height: 50,
        margin: EdgeInsets.only(right: 70),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          color: Color.fromARGB(255, 212, 230, 245),
        ),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 10)),
            Icon(Icons.home),
            Padding(padding: EdgeInsets.only(left: 60)),
            SizedBox(
              width: 30,
            ),
            Icon(
              FontAwesomeIcons.compass,
              color: Colors.blue,
            ),
            SizedBox(
              width: 30,
            ),
            Padding(padding: EdgeInsets.only(left: 40)),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
