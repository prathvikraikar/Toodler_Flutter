import 'package:dsiproject/widgets/pro35.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro33 extends StatefulWidget {
  Pro24State createState() => Pro24State();
}

class Pro24State extends State<Pro33> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro35()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
          child: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset("assets/rectangle1.png", fit: BoxFit.cover),
        ),
        Positioned(
          left: 16.0,
          top: 16.0,
          child: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        Positioned(
          right: 16.0,
          top: 16.0,
          child: Column(
            children: [
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.cameraRotate,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Handle notification icon press
                },
              ),
              SizedBox(height: 8.0),
              IconButton(
                icon: Icon(
                  Icons.flash_off,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Handle settings icon press
                },
              ),
              SizedBox(height: 8.0),
              IconButton(
                icon: Icon(
                  Icons.emoji_emotions,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Handle settings icon press
                },
              ),
            ],
          ),
        ),
        Positioned(
          left: 50,
          bottom: 30,
          child: IconButton(
            tooltip: "Upload",
            icon: Icon(
              Icons.image,
              color: Color.fromARGB(255, 223, 7, 18),
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
        Positioned(
          left: 180,
          bottom: 86,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.circle,
                size: 70,
                color: Colors.red,
              )),
        ),
        Positioned(
            left: 180,
            bottom: 50,
            child: Image.asset("assets/whitecircle.png")),

        // Positioned(
        //   left: 20,
        //   bottom: 16.0,
        //   child: IconButton(
        //     icon:
        //     ),
        //     onPressed: () {},
        //   ),
      ])),
    );
  }
}
