import 'package:flutter/material.dart';
import 'package:quarantine_flutter/Homepage.dart';
import 'package:quarantine_flutter/Joinnow.dart';
import 'package:quarantine_flutter/Login.dart';
import 'package:quarantine_flutter/signup.dart';
import 'Welcome.dart';



void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(

        accentColor: Colors.black,
        dialogBackgroundColor: Colors.black,

//        colorScheme: ColorScheme.dark(),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/Signup': (context) => SignUpPage(),
        '/Login': (context) => LoginPage(),
//        '/Homepage': (context) => HomePage(),
        '/Joinnow': (context) => Joinnow(),
//        '/CurrentPage': (context) => CurrentPage(),
      },
    
    );
  }

}

