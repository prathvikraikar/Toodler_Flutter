import 'package:dsiproject/widgets/Pro32.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro26 extends StatefulWidget {
  Pro24State createState() => Pro24State();
}

class Pro24State extends State<Pro26> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro32()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Icon(Icons.arrow_circle_left_outlined),
              ),
              Padding(padding: EdgeInsets.only(left: 280)),
              Icon(FontAwesomeIcons.bell),
              Padding(padding: EdgeInsets.all(5)),
              Icon(Icons.settings)
            ],
          ),
          Divider(
            color: Colors.blue,
          ),
          // Padding(padding: EdgeInsets.all(10)),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(
              "Edit your Profile",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 70)),
          Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Colors.blue.shade100),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Change Image"),
                  ),
                  Padding(padding: EdgeInsets.all(21)),
                  Stack(
                    children: [
                      Image.asset("assets/Rectangle68.png"),
                      Positioned(
                          child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/Boss.png"),
                            ),
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          )
                        ],
                      ))
                    ],
                  )
                ],
              )),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade100),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Name"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Prathvik Rai"),
                    ),
                    Padding(padding: EdgeInsets.only(left: 50)),
                    Icon(Icons.arrow_right)
                  ],
                ),
                Container(
                  width: 230,
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Username"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("@PrathvikRai"),
                    ),
                    Padding(padding: EdgeInsets.only(left: 13)),
                    Icon(Icons.arrow_right)
                  ],
                ),
                Container(
                  width: 230,
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Bio"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("        "),
                    ),
                    Padding(padding: EdgeInsets.only(left: 113)),
                    Icon(Icons.arrow_right)
                  ],
                ),
                Container(
                  width: 230,
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Name"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Prathvik Rai"),
                    ),
                    Padding(padding: EdgeInsets.only(left: 50)),
                    Icon(Icons.arrow_right)
                  ],
                ),
                Container(
                  width: 230,
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Padding(padding: EdgeInsets.only(top: 10)),
                Padding(padding: EdgeInsets.only(top: 10)),
                Padding(padding: EdgeInsets.only(top: 10)),
              ],
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 40)),
          Text(
            "Delete  Account",
            style: TextStyle(fontSize: 16, color: Colors.red.shade300),
          )
        ]),
      ),
      floatingActionButton: Container(
        width: 210,
        height: 50,
        margin: EdgeInsets.only(right: 70),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: Color.fromARGB(255, 212, 230, 245)),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 10)),
            Icon(Icons.home),
            Padding(padding: EdgeInsets.only(left: 60)),
            Icon(FontAwesomeIcons.arrowsSpin),
            Padding(padding: EdgeInsets.only(left: 40)),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
