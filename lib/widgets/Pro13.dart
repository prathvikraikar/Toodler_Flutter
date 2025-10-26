import 'package:dsiproject/widgets/Pro11.dart';
import 'package:dsiproject/widgets/Pro21.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pro13 extends StatefulWidget {
  @override
  Pro10State createState() => Pro10State();
}

class Pro10State extends State<Pro13> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 15));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro21()),
    );
  }

  @override
  Widget build(BuildContext context) {
    List images = [
      Container(
          child: Image.asset(
        "assets/smallboy.png",
        fit: BoxFit.fill,
      )),
      Image.asset("assets/pexels-photo-9.png"),
      Image.asset("assets/playingboy.png"),
      Image.asset("assets/pexels-photo-2.png"),
      Image.asset(
        "assets/playingboy1.png",
      ),
      Image.asset("assets/pexels-photo-3.png"),
      Image.asset("assets/boy.png"),
    ];
    Icon t = Icon(Icons.abc);
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(50))),
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(34))),
                        fillColor: Colors.blue[50],
                        filled: true,
                        hintText: "Search",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 95, 173, 238)),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 170, 208, 241),
                            ),
                            child: Icon(
                              Icons.search,
                              color: Colors.blue,
                              size: 40,
                            ),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, left: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Icon(
                      Icons.videocam_rounded,
                      size: 30,
                      color: Color.fromARGB(255, 245, 242, 242),
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.blue.shade100,
            ),
            TabBar(
              // Tabs configuration
              indicatorColor:
                  Colors.pink, // Color of the selected tab indicator
              labelColor: Colors.black, // Color of the selected tab label
              unselectedLabelColor:
                  Colors.grey, // Color of the unselected tab labels
              tabs: [
                Tab(text: 'Following'),
                Tab(text: 'Near-By'),
                Tab(text: 'Video'),
                Tab(text: 'Blog'),
                Tab(text: 'Image'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Content for Tab 1
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: MasonryGridView.count(
                        crossAxisCount: 2,
                        itemCount: 7,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              images[index],
                              Positioned(
                                top: 10,
                                right: 10,
                                child: IconButton(
                                  icon: Icon(Icons.play_circle_filled,
                                      color: Colors.white, size: 30),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Pro11()),
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  // Content for Tab 2
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: MasonryGridView.count(
                        crossAxisCount: 2,
                        itemCount: 7,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              images[index],
                              Positioned(
                                top: 10,
                                right: 10,
                                child: IconButton(
                                  icon: Icon(Icons.play_circle_filled,
                                      color: Colors.white, size: 30),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Pro11()),
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  // Content for Tab 3
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: MasonryGridView.count(
                        crossAxisCount: 2,
                        itemCount: 7,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              images[index],
                              Positioned(
                                top: 10,
                                right: 10,
                                child: IconButton(
                                  icon: Icon(Icons.play_circle_filled,
                                      color: Colors.white, size: 30),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Pro11()),
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  // Content for Tab 4
                  Container(
                    child: Center(
                      child: Text('Tab 4 Content'),
                    ),
                  ),
                  // Content for Tab 5
                  Container(
                    child: Center(
                      child: Text('Tab 5 Content'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(43),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.blue,
                  size: 20,
                  shadows: [Shadow(blurRadius: 15, color: Colors.blue)],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.person),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
