import 'package:dsiproject/widgets/Pro22.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro21 extends StatefulWidget {
  @override
  Pro10State createState() => Pro10State();
}

class Pro10State extends State<Pro21> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro22()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      "smallboy.png",
      "pexels-photo-9.png",
      "playingboy.png",
      "pexels-photo-2.png",
      "playingboy1.png",
      "pexels-photo-3.png",
      "boy.png",
      "pexels-photo-9.png",
      "playingboy.png",
    ];
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Icon(
                    Icons.arrow_circle_left_outlined,
                    size: 30,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 250)),
                Icon(FontAwesomeIcons.bell),
                Padding(padding: EdgeInsets.only(left: 20)),
                Icon(Icons.settings)
              ],
            ),
            Divider(
              color: Colors.blue,
            ),
            Row(
              children: [
                Image.asset("assets/Boss.png"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 7.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Prathvik",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        Text("@Prathvik",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black)),
                        Padding(padding: EdgeInsets.all(4)),
                        Row(
                          children: [
                            Text("626"),
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                            ),
                            Text("626"),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                            ),
                            Text("626")
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Following",
                              style: TextStyle(color: Colors.blue),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            Text("Following",
                                style: TextStyle(color: Colors.blue)),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            Text("Following",
                                style: TextStyle(color: Colors.blue))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Text(
                            "Babies are the gifts",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Following all",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/Rectangle42.png",
                      height: 150,
                      color: Colors.purple,
                    ),
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15, left: 19),
                        child: Image.asset("assets/avatar1.png"),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assets/Rectangle43.png",
                      height: 150,
                      color: Color.fromARGB(255, 176, 69, 39),
                    ),
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15, left: 19),
                        child: Image.asset("assets/avatar2.png"),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assets/Rectangle44.png",
                      height: 150,
                      color: Color.fromARGB(255, 19, 154, 216),
                    ),
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15, left: 19),
                        child: Image.asset("assets/avatar3.png"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.pink,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(text: 'Following'),
                        Tab(text: 'Near-By'),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
