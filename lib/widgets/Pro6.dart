import 'package:dsiproject/widgets/Pro10.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class blogs extends StatefulWidget {
  @override
  blogsState createState() => blogsState();
}

class blogsState extends State<blogs> {
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 4));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pro10()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 500,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Image.asset("assets/blogdetail.png",
                        fit: BoxFit.fitWidth)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20),
                child: Text(
                  "My Experince:The Second Time",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/child2.png"),
                    ),
                  ),
                  Column(
                    children: [
                      Text("Manisha.talekar"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("2 Childern // Working mom"),
                      )
                    ],
                  )
                ],
              ),
              // Padding(padding: EdgeInsets.all(7)),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                            "lorems jbkbks asbjkas bdvkska fmdfka fasf sbkdbksbdk bsakd sdsadk akd bsak dbkbdks akdbak sdbjsba dkbasd dsabdbs badb sakdbkasbd kbaskdbkasbd kabkdbkas bdkbas lorems jbkbks asbjkas bdvkska fmdfka.  akd bsak dbkbdks akdbak sdbjsba dkbasd dsabdbs badb sakdbkasbd kbaskdbkasbd kabkdbkas bdkbas lorems jbkbks asbjkas bdvkska fmdfka fasf sbkdbksbdk bsakd sdsadk akd bsak dbkbdks akdbak sdbjsba dkbasd dsabdbs badb sakdbkasbd kbaskdbkasbd kabkdbkas bdkbas"),
                        Padding(padding: EdgeInsets.all(6)),
                        Text(
                            "fasf sbkdbksbdk bsakd. sdsadk akd bsak dbkbdks akdbak sdbjsba dkbasd dsabdbs badb sakdbkasbd kbaskdbkasbd kabkdbkas bdkbas lorems jbkbks asbjkas bdvkska fmdfka fasf sbkdbksbdk bsakd sdsadk akd bsak dbkbdks akdbak sdbjsba dkbasd dsabdbs badb sakdbkasbd kbaskdbkasbd kabkdbkas bdkbas lorems jbkbks asbjkas bdvkska fmdfka fasf sbkdbksbdk bsakd sdsadk."),
                        Padding(padding: EdgeInsets.all(6)),
                        Padding(padding: EdgeInsets.all(6)),
                      ],
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
            label: "Like",
            icon: Icon(
              FontAwesomeIcons.heart,
              color: Colors.pink,
            )),
        BottomNavigationBarItem(
            label: "save",
            icon: Icon(
              Icons.bookmark_outline_sharp,
              color: Colors.blue,
            )),
        BottomNavigationBarItem(
            label: "share",
            icon: Icon(
              Icons.share,
              color: Colors.black,
            ))
      ]),
    );
  }
}
