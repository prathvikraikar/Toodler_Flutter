import 'package:dsiproject/widgets/pro36.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro35 extends StatefulWidget {
  Pro24State createState() => Pro24State();
}

class Pro24State extends State<Pro35> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro36()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                "assets/rectangle.png", // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 16.0,
              top: 16.0,
              child: IconButton(
                icon: Icon(Icons.close),
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
                    icon: Icon(FontAwesomeIcons.music),
                    onPressed: () {
                      // Handle notification icon press
                    },
                  ),
                  SizedBox(height: 8.0),
                  IconButton(
                    icon: Icon(Icons.emoji_emotions),
                    onPressed: () {
                      // Handle settings icon press
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              left: 50,
              bottom: 70,
              top: 70,
              child: Container(
                child: Image.asset(
                  "assets/rectangle1.png",
                  fit: BoxFit.fitWidth,
                  width: 350,
                ),
              ),
            ),
            Positioned(
              left: 150,
              bottom: 108,
              child: Text(
                "Post With?",
                style: TextStyle(
                    color: Color.fromARGB(255, 139, 172, 179), fontSize: 24),
              ),
              // left: 200,
              // top: 420,
            ),
            Positioned(
              left: 120,
              bottom: 40,
              child: Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          "assets/avatar1.png"), // Replace with your image path
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          "assets/avatar2.png"), // Replace with your image path
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          "assets/avatar3.png"), // Replace with your image path
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
