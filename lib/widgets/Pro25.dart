import 'dart:ui';

import 'package:dsiproject/widgets/Pro26.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro25 extends StatefulWidget {
  Pro25State createState() => Pro25State();
}

class Pro25State extends State<Pro25> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro26()),
    );
  }

  void openCommentSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      context: context,
      builder: (BuildContext context) {
        return Container(
            height: 300,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 244, 248),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            // Your bottom sheet content here
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 10),
                  child: Text(
                    "@Prathvik Raikar:",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Hero ,super"),
                ),
                Padding(padding: EdgeInsets.all(4)),
                Row(
                  children: [
                    Text("2h"),
                    Padding(padding: EdgeInsets.all(10)),
                    Text("1 like"),
                    Padding(padding: EdgeInsets.all(10)),
                    Text("reply"),
                    Padding(padding: EdgeInsets.all(10)),
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Container(
                      child: Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.pink,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 10),
                  child: Text(
                    "@Prathvik Raikar:",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Hero ,super"),
                ),
                Padding(padding: EdgeInsets.all(3)),
                Row(
                  children: [
                    Text("2h"),
                    Padding(padding: EdgeInsets.all(10)),
                    Text("1 like"),
                    Padding(padding: EdgeInsets.all(10)),
                    Text("reply"),
                    Padding(padding: EdgeInsets.all(10)),
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Container(
                      child: Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.pink,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/Boss.png"),
                    ),
                    Container(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(hintText: "add comment"),
                      ),
                    )
                  ],
                )
              ],
            ));
      },
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
                "assets/childbed.png", // Replace with your image path
                fit: BoxFit.fill, // Set to BoxFit.fill for full-screen coverage
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
              top: 50,
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
                  IconButton(
                      onPressed: () {
                        openCommentSheet();
                      },
                      icon: Icon(
                        Icons.comment,
                        color: Colors.tealAccent,
                      )),
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
