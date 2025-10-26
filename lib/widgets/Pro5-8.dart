import 'package:dsiproject/widgets/Pro6.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page1 extends StatefulWidget {
  @override
  Page1State createState() => Page1State();
}

class Page1State extends State<Page1> {
  List<String> storyNames = [
    "Your Story",
    "John",
    "Emily", // Replace with random name for the third image
    "David", // Replace with random name for the fourth image
    // Add more names as needed for the remaining images
    "John", // Replace with random name for the second image
    "Emily", // Replace with random name for the third image
    "David",
    "John", // Replace with random name for the second image
    "Emily", // Replace with random name for the third image
    "David",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.bookmark,
                      color: Colors.blue,
                    ),
                    Image.asset(
                      "assets/todler.png", // Replace with your own image asset
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 16),
                    ...List.generate(storyNames.length, (index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color:
                                    Colors.pink, // Replace with desired color
                                width: 3,
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/story.png", // Replace with your own image asset
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            storyNames[index],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      );
                    }),
                    SizedBox(width: 16),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 300,
                  top: 24,
                ),
                child: Text(
                  "Catagories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      width: 120,
                      height: 30,
                      child: Center(child: Text("Randome")),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.blue),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      width: 120,
                      height: 30,
                      child: Center(child: Text("Randome")),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 51, 243, 33)),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      width: 120,
                      height: 30,
                      child: Center(child: Text("Randome")),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 243, 243, 33)),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      width: 120,
                      height: 30,
                      child: Center(child: Text("Randome")),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 33, 65, 243)),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      width: 60,
                      height: 30,
                      child: Center(child: Text("Some")),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 243, 107, 33)),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      width: 120,
                      height: 30,
                      child: Center(child: Text("Randome")),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 33, 243, 222)),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      width: 120,
                      height: 30,
                      child: Center(child: Text("Randome")),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 145, 33, 243)),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      width: 120,
                      height: 30,
                      child: Center(child: Text("Randome")),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color.fromARGB(255, 243, 33, 89)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 290, top: 24),
                child: Text("Latest Blocs",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 500,
                    child: Card(
                      elevation: 10,
                      shadowColor: Color.fromARGB(255, 149, 181, 207),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Image.asset(
                              "assets/poster.png",
                              fit: BoxFit.contain,
                              width: 200,
                              height: 200,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "My Experience second time",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ),
                              Text("this is the fact that i am unable"),
                              Text("this is the fact that i am unable"),
                              Text("this is the fact that i am unable"),
                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.heart,
                                        color: Colors.pink,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => blogs()),
                                        );
                                      },
                                    ),
                                    Padding(padding: EdgeInsets.all(20)),
                                    Icon(
                                      FontAwesomeIcons.bookmark,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 200,
                    width: 600,
                    child: Card(
                      elevation: 23,
                      shadowColor: Color.fromARGB(255, 149, 181, 207),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Image.asset(
                              "assets/secposter.png",
                              fit: BoxFit.contain,
                              width: 200,
                              height: 200,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "My Experience second time",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                              ),
                              Text("this is the fact that i am unable"),
                              Text("this is the fact that i am unable"),
                              Text("this is the fact that i am unable"),
                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.heart,
                                      color: Colors.pink,
                                    ),
                                    Padding(padding: EdgeInsets.all(20)),
                                    Icon(
                                      FontAwesomeIcons.bookmark,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.compass,
              color: Colors.blue,
            ),
            label: "Navigation"),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.camera,
              color: Colors.blue,
            ),
            activeIcon: IconTheme(data: IconThemeData(), child: Text("data")),
            label: "camara",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.heart,
              color: Colors.pink,
            ),
            label: "camara"),
        BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.person,
              color: Colors.redAccent,
            ),
            label: "camara"),
      ]),
    );
  }
}
