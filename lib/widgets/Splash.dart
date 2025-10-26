import 'package:dsiproject/widgets/Pro1.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
  });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _simulateSplash();
  }

  void _simulateSplash() async {
    // Simulate a delay before transitioning to the main screen
    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 250, left: 151, child: SplashImage()),
          const Positioned(
            top: 100,
            right: 16,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage(
                  "assets/smiling-baby-biting-right-index-finger-1648374.png"),
            ),
          ),
          const Positioned(
            bottom: 100,
            right: 190,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 40,
              backgroundImage:
                  AssetImage("assets/child-christmas-baby-cute-37664.png"),
            ),
          ),
          Positioned(
              left: 16,
              right: 16,
              top: 230,
              child: Image.asset("assets/Bigcircle.png")),
          Positioned(
              top: 350,
              right: 200,
              child: Image.asset("assets/mediumcircle.png")),
          Positioned(
              // bottom: 350,

              left: 250,
              top: 100,
              child: Image.asset("assets/smallcircle.png")),
          const Positioned(
            top: 160,
            left: 10,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 60,
              backgroundImage:
                  AssetImage("assets/baby-in-white-onesie-789786.png"),
            ),
          ),
          Positioned(bottom: 380, left: 100, child: SplashTextWidget()),
        ],
      ),
    );
  }
}

class SplashImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/child-1.png",
          color: Color.fromARGB(255, 51, 160, 239),
        ),
        Positioned(
          top: 6,
          left: 6,
          bottom: 3,
          child: Image.asset(
            "assets/child.png",
            color: Color.fromARGB(255, 10, 27, 41),
          ),
        ),
      ],
    );
  }
}

class SplashTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Image.asset(
          "assets/todler.png",
          color: Colors.blue,
        ),
        Positioned(
          left: 5,
          child: Image.asset(
            "assets/todler1.png",
            color: Color.fromARGB(255, 6, 35, 58),
          ),
        ),
      ],
    );
  }
}
