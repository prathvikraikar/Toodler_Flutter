import 'package:dsiproject/widgets/Pro38.dart';
import 'package:flutter/material.dart';

class Pro37 extends StatefulWidget {
  Pro24State createState() => Pro24State();
}

class Pro24State extends State<Pro37> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 10));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro38()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Icon(
                Icons.arrow_back_outlined,
                color: Colors.blue,
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 203, 219, 233),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Settings",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: Colors.blue.shade100),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Profile"),
                      ),
                      Padding(padding: EdgeInsets.only(left: 200)),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                      )
                    ],
                  )),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Center(
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade100),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Privacy Setting"),
                        ),
                        Padding(padding: EdgeInsets.only(left: 150)),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                        )
                      ],
                    ),
                    Container(
                      width: 300,
                      child: Divider(
                        color: Colors.blue,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Help Ceter"),
                        ),
                        Padding(padding: EdgeInsets.only(left: 176)),
                        Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),
                    Container(
                      width: 300,
                      child: Divider(
                        color: Colors.blue,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("About us"),
                        ),
                        Padding(padding: EdgeInsets.only(left: 186)),
                        Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),
                    Container(
                      width: 300,
                      child: Divider(
                        color: Colors.blue,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Terms of Survice"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                        ),
                        Padding(padding: EdgeInsets.only(left: 120)),
                        Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),
                    Container(
                      width: 300,
                      child: Divider(
                        color: Colors.blue,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Help Ceter"),
                        ),
                        Padding(padding: EdgeInsets.only(left: 175)),
                        Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Padding(padding: EdgeInsets.only(top: 10)),
                  ],
                ),
              ),
            ),
          ]),
    ));
  }
}
