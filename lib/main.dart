import 'package:dsiproject/widgets/Pro10.dart';
import 'package:dsiproject/widgets/Pro11.dart';
import 'package:dsiproject/widgets/Pro21.dart';
import 'package:dsiproject/widgets/Pro13.dart';
import 'package:dsiproject/widgets/Pro22.dart';
import 'package:dsiproject/widgets/Pro24.dart';
import 'package:dsiproject/widgets/Pro25.dart';
import 'package:dsiproject/widgets/Pro26.dart';
import 'package:dsiproject/widgets/Pro32.dart';
import 'package:dsiproject/widgets/Pro33.dart';
import 'package:dsiproject/widgets/Pro37.dart';
import 'package:dsiproject/widgets/Pro38.dart';
import 'package:dsiproject/widgets/Pro40.dart';
import 'package:dsiproject/widgets/Pro7.dart';
import 'package:dsiproject/widgets/Pro6.dart';
import 'package:dsiproject/widgets/Pro2-3.dart';
import 'package:dsiproject/widgets/Pro5-8.dart';
import 'package:dsiproject/widgets/Splash.dart';
import 'package:dsiproject/widgets/pro36.dart';
import 'package:dsiproject/widgets/Pro1.dart';
import 'package:dsiproject/widgets/pro35.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Color.fromARGB(255, 138, 173, 202)),
        home: SplashPage());
  }
}
