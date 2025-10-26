import 'package:dsiproject/widgets/Pro5-8.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override
  signupState createState() => signupState();
}

bool isemail = true;
IconData eyeIcon = Icons.visibility;
bool isPasswordVisible = false;

class signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50),
                child: Image.asset(
                  "assets/child-1.png",
                  color: Colors.black,
                  // width: 60,
                ),
              ),
              Image.asset(
                "assets/todler.png",
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                width: 300,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  onSubmitted: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    hintText: "Phone number",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 5, color: Color.fromARGB(255, 9, 43, 72)),
                    ),
                    prefixStyle: TextStyle(),
                    prefixIcon: Container(
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 11, 56, 92),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(9),
                          bottomLeft: Radius.circular(9),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "+91",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 242, 226, 226),
                              decoration: TextDecoration.none),
                        ),
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
                  onSubmitted: (value) {
                    setState(() {
                      isemail = !value.contains("@");
                    });
                  },
                  decoration: InputDecoration(
                    suffixIcon: isemail ? Icon(Icons.check) : Icon(Icons.close),
                    hintText: "Username/email",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 5, color: Color.fromARGB(255, 9, 43, 72)),
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
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                width: 300,
                child: TextField(
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: "Name",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue.shade900,
                        width: 3,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(eyeIcon),
                      color: Colors.black,
                      onPressed: () {
                        setState(() {});
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  child: Text("Sign Up"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page1()),
                    );
                  },
                ),
              ),
              Text(
                "Have an Account? Log In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
