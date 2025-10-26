import 'package:dsiproject/widgets/Pro37.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro36 extends StatefulWidget {
  Pro24State createState() => Pro24State();
}

class Pro24State extends State<Pro36> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro37()),
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
                "assets/rectangle1.png",
                fit: BoxFit.cover,
              ),
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
              left: 200,
              top: 30,
              child: Text(
                "1 min",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 16.0,
              top: 16.0,
              child: IconButton(
                icon: Icon(
                  Icons.emoji_emotions,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            Positioned(
              right: 16,
              // top: 220,
              bottom: 200,
              child: Container(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/avatar1.png"),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/avatar2.png"),
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
            Positioned(
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(
                  children: [
                    TextField(
                      inputFormatters: [],
                      style: TextStyle(color: Colors.white),
                      // textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixIcon: Image.asset(
                          "assets/avatar3.png",
                          width: 50,
                        ),
                        hintText: '  Write Caption',
                        hintStyle: TextStyle(color: Colors.pink.shade200),
                        contentPadding: EdgeInsets.all(16.0),
                      ),
                    ),
                    Divider(),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          FontAwesomeIcons.tags,
                          color: Color.fromARGB(255, 236, 234, 238),
                        ),
                        hintText: '    Add Tags',
                        hintStyle: TextStyle(color: Colors.pink.shade200),
                        contentPadding: EdgeInsets.all(16.0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(9)),
                    Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: Colors.pink),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.pink),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                            onPressed: () {},
                            child: Text("Post")))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
