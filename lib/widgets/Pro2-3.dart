import 'package:dsiproject/widgets/Pro5-8.dart';
import 'package:dsiproject/widgets/Pro7.dart';
import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final a = TextEditingController();
  bool obsecuretext = true;
  bool isInvalidEmail = false;
  final image = Image.asset(
    "assets/child-4.png",
    fit: BoxFit.fitWidth,
    width: 100,
  );
  final image2 = Image.asset("assets/child-1.png");
  final image3 = Image.asset(
    "assets/todler.png",
    color: Colors.black,
  );
  IconData eyeIcon = Icons.visibility;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: isInvalidEmail ? image : image2,
                ),
              ),
              if (isInvalidEmail)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Invalid email",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              isInvalidEmail
                  ? Text(
                      "The Given email is wrong or invalid",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : image3,
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                width: 300,
                child: TextField(
                  onSubmitted: (value) {
                    setState(() {
                      isInvalidEmail = !value.contains("@");
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Username/email",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            isInvalidEmail ? Colors.red : Colors.blue.shade900,
                      ),
                    ),
                    prefixIcon: Text(
                      "@",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: BorderSide(
                        color: Colors.blue[900]!,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                width: 300,
                child: TextField(
                  controller: a,
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue.shade900,
                        width: 3,
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 5, left: 5),
                      child: Text(
                        "*",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(eyeIcon),
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                          eyeIcon = isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15)),
              Container(
                width: 300,
                height: 50,
                color: Color.fromARGB(255, 5, 45, 77),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page1()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    // Add the desired action for the "Sign Up" link
                  },
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signup()),
                      );
                    },
                    child: Text(
                      "Or Sign Up",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
