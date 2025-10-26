import 'package:dsiproject/widgets/Pro40.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pro38 extends StatefulWidget {
  Pro24State createState() => Pro24State();
}

class Pro24State extends State<Pro38> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro40()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10),
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.blue,
                  ),
                ),
                Divider(
                  color: Color.fromARGB(255, 203, 219, 233),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(padding: EdgeInsets.all(15)),
                Center(
                  child: Container(
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue.shade100),
                    child: TabBar(
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue.shade300),
                        tabs: [
                          Tab(
                            text: "System",
                          ),
                          Tab(
                            text: "Follows",
                          ),
                          Tab(
                            text: "Likes",
                          ),
                          Tab(
                            text: "Comments",
                          )
                        ]),
                  ),
                ),
                Padding(padding: EdgeInsets.all(15)),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Center(
                    widthFactor: 50,
                    child: Container(
                        width: 380,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/avatar1.png"),
                            ),
                            Padding(padding: EdgeInsets.all(8)),
                            Column(
                              children: [
                                Text("@jattw"),
                                Text("Started following you")
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(8)),
                            OutlinedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    side: MaterialStatePropertyAll(BorderSide(
                                      color: Colors.blue,
                                    ))),
                                onPressed: () {},
                                child: Text(
                                  "Follow-Back",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 13, 89, 202)),
                                ))
                          ],
                        )),
                  ),
                ),
                Divider(
                  color: Color.fromARGB(255, 203, 219, 233),
                ),
                Padding(padding: EdgeInsets.all(15)),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Center(
                    widthFactor: 50,
                    child: Container(
                        width: 380,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/avatar2.png"),
                            ),
                            Padding(padding: EdgeInsets.all(8)),
                            Column(
                              children: [
                                Text("@jattwthoh Roi"),
                                Text("Started following you")
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(8)),
                            OutlinedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    side: MaterialStatePropertyAll(BorderSide(
                                      color: Colors.blue,
                                    ))),
                                onPressed: () {},
                                child: Text(
                                  "Follow-Back",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 13, 89, 202)),
                                ))
                          ],
                        )),
                  ),
                ),
                Divider(
                  color: Color.fromARGB(255, 203, 219, 233),
                ),
                Padding(padding: EdgeInsets.all(15)),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Center(
                    widthFactor: 50,
                    child: Container(
                        width: 380,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/prog.png"),
                            ),
                            Padding(padding: EdgeInsets.all(8)),
                            Column(
                              children: [
                                Text("@Battw"),
                                Text("Started following you")
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(8)),
                            OutlinedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    side: MaterialStatePropertyAll(BorderSide(
                                      color: Colors.blue,
                                    ))),
                                onPressed: () {},
                                child: Text(
                                  "   Following  ",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 13, 89, 202)),
                                ))
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
