import 'package:dsiproject/widgets/Splash.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro40 extends StatefulWidget {
  Pro40State createState() => Pro40State();
}

class Pro40State extends State<Pro40> {
  bool _isSearchBarVisible = false;
  var i = Icon(
    Icons.search,
    color: Color.fromARGB(255, 19, 101, 189),
  );

  void _toggleSearchBarVisibility() {
    setState(() {
      _isSearchBarVisible = !_isSearchBarVisible;
    });
  }

  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(minutes: 14));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SplashPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    void _toggleSearchBarVisibility() {
      setState(() {
        _isSearchBarVisible = !_isSearchBarVisible;
      });
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/boy.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          if (_isSearchBarVisible) // Conditionally show the container
            Positioned(
                top: 20,
                left: 0,
                right: 0,
                child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 245, 245),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    // Replace with your desired color
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(left: 8),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search",
                                suffixIcon: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 12, 129, 231),
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isSearchBarVisible = false;
                                      });
                                    },
                                  ),
                                ),
                                enabled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(34))),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              // height: 10,
                              margin: EdgeInsets.only(top: 50, left: 70),
                              child: Text("Picture"),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 80, 176, 39),
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                            Container(
                              width: 100,
                              // height: 20,
                              margin: EdgeInsets.only(top: 50, left: 70),
                              child: Center(child: Text("Pict")),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 160, 176, 39),
                                  borderRadius: BorderRadius.circular(16)),
                            ),
                            Container(
                              width: 50,
                              // height: 30,
                              margin: EdgeInsets.only(top: 50, left: 70),
                              child: Center(child: Text("Picture")),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 239, 10, 194),
                                  borderRadius: BorderRadius.circular(16)),
                            )
                          ],
                        )
                      ],
                    ))),
          Positioned(
            top: 40.0,
            left: 16.0,
            child: Row(
              children: [
                Text(
                  "Following",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 247, 245, 245),
                  ),
                ),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                Text(
                  "Near By",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 247, 245, 245),
                  ),
                ),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                SizedBox(width: 16.0),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 247, 245, 245),
                    ),
                    child: IconButton(
                      icon: i != null ? i : Container(), // Updated line
                      onPressed: () {
                        _toggleSearchBarVisibility();
                        setState(() {
                          i = Icon(
                            Icons.plus_one_rounded,
                            color: Color.fromARGB(255, 247, 245, 245),
                          ); // Updated line
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                SizedBox(width: 8.0),
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
            top: 80.0,
            left: 16.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
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
