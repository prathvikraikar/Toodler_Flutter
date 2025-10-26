import 'package:dsiproject/widgets/Pro13.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro11 extends StatefulWidget {
  @override
  Pro10State createState() => Pro10State();
}

class Pro10State extends State<Pro11> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 5));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro13()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/playingboy.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            top: 40.0,
            left: 16.0,
            child: Row(
              children: [
                Text(
                  "Following",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                Text(
                  "Near By",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 12, 129, 231),
                  ),
                  child: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 218, 230, 239),
                    size: 40,
                  ),
                ),
                SizedBox(width: 8.0),
                SizedBox(width: 16.0),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 236, 228, 228),
                  ),
                  child: Icon(
                    Icons.videocam_rounded,
                    size: 30,
                    color: Color.fromARGB(255, 18, 111, 199),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 70)),
          Positioned(
            top: 70.0,
            left: 130,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: 50,
                child: Divider(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            right: 16.0,
            top: 350.0,
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
                Positioned(
                  right: 16.0,
                  top: 160,
                  child: Icon(
                    Icons.add,
                    color: Colors.deepPurple.shade200,
                  ),
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
          Positioned(
              left: 36,
              bottom: 90,
              child: Text(
                "@javaed .Chunky",
                style: TextStyle(color: Colors.white),
              )),
          Positioned(
              left: 36,
              bottom: 73,
              child: Text(
                "@javaed .Chunky Like it when u feel",
                style: TextStyle(color: Colors.white),
              ))
        ],
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
