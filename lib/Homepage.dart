import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:quarantine_flutter/Joinnow.dart';
import 'package:quarantine_flutter/Widget/bezierContainer.dart';
//import 'package:quarantine_flutter/Login.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'dart:convert';
import 'package:http/http.dart' as http;

class Album {
  final String username;

  Album({this.username,});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(

        username: json['username']
    );
  }
}


class HomePage extends StatefulWidget {

  final String title;
  final String email;


  HomePage({Key key,this.title,@required this.email}) : super(key: key);



  @override
  _HomePageState createState() => _HomePageState(email: email);
}

class _HomePageState extends State<HomePage> {

  int _index = 0;
  final String email;



  _HomePageState({Key key,@required this.email});
//====



 


  //-----
  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {

      case 0:
        child = CurrentPage(emaildata: email,);
        break;
      case 1:
        child = Joinnow();
        break;
      case 2:
        child = FlutterLogo(colors: Colors.red);
        break;
      case 3:
        child = FlutterLogo(colors: Colors.purple);
        break;
      case 4:
        child = FlutterLogo(colors: Colors.yellow);
        break;
    }



    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,

        bottomNavigationBar:BottomNavigationBar(
          onTap: (newIndex) => setState(() => _index = newIndex),
          currentIndex: _index,
//        selectedIconTheme: IconThemeData(
//          color: Colors.amber,
//        ),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white,),
              title: Text('Home',style:
                TextStyle(
                  color: Colors.white,
                ),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.white,),
              title: Text('Search',style:
                TextStyle(
                  color: Colors.white,
                ),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle,color: Colors.white,),
              title: Text('Post',style:
              TextStyle(
                color: Colors.white,
              ),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications,color: Colors.white,),
              title: Text('Notifications',style:
              TextStyle(
                color: Colors.white,
              ),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,color: Colors.white,),
              title: Text('Profile',style:
              TextStyle(
                color: Colors.white,
              ),),
            ),

          ],
//        currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
//        onTap: _onItemTapped,
        ),
        body: SizedBox.expand(child: child),
      ),
    );
  }
}


class CurrentPage extends StatefulWidget {

  


  final String emaildata;

  CurrentPage({Key key,@required this.emaildata}) : super(key: key);

  @override
  _CurrentPageState createState() => _CurrentPageState(emaildata: emaildata);
}

class _CurrentPageState extends State<CurrentPage> {
  final String emaildata;

  _CurrentPageState({Key key,@required this.emaildata});

  Future <Album> fetchAlbum() async {
    // Showing CircularProgressIndicator.

    // Getting value from Controller

    // SERVER API URL
    var url = 'https://chauvinistic-alcoho.000webhostapp.com/fetch_user.php';

    // Store all data with Param Name.
    var data = {'email': emaildata};

    // Starting Web API Call.
    var response = await http.post(url, body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

//     If Web call Success than Hide the CircularProgressIndicator.
    if (response.statusCode == 200) {
      // Hiding the CircularProgressIndicator.

//       Navigate to Profile Screen & Sending Email to Next Screen.
      return Album.fromJson(json.decode(response.body));
    } else {
      // If Email or Password did not Matched.
//       Hiding the CircularProgressIndicator.

      // Showing Alert Dialog with Response JSON Message.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(message, style:
            TextStyle(color: Colors.white),),
            actions: <Widget>[
              FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
  
  
  logout(BuildContext context){

    Navigator.pop(context);

  }

  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }
  
  @override
  Widget build(BuildContext context) {
//    final height = MediaQuery.of(context).size.height;
    // TODO: implement build

      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.deepPurple,
        title: Text("techstagram"),
        leading: Icon(Icons.code),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.message),
          ),
        ],),
        body: Container(
//          height: height,
          child: Stack(
            children: <Widget>[
//              Positioned(
//                top: -MediaQuery.of(context).size.height * .15,
//                right: -MediaQuery.of(context).size.width * .4,
//                child: BezierContainer(),
//              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(),
//                  _title(),
                      SizedBox(
                        height: 50,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Column(
                          children: <Widget>[

                            Container(
                                width: 280,
                                color: Colors.deepPurple,
                                padding: EdgeInsets.all(10.0),
                                  

                                  child: Text('Welcome' + '\n' + widget.emaildata,
                                      style: TextStyle(fontSize: 20,
                                          color: Colors.white)),

                            ),
                            Padding(padding: const EdgeInsets.only(top: 60.0),),
                            FutureBuilder<Album>(
                              future: futureAlbum,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {

                                  return Text(snapshot.data.username,style:
                                  TextStyle(color: Colors.white),);

                                } else if (snapshot.hasError) {
                                  return Text("${snapshot.error}",style:
                                    TextStyle(color: Colors.white),);

                                }

                                // By default, show a loading spinner.
                                return CircularProgressIndicator();
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                              child: Row(
                                children: <Widget>[

                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      height: 150.0,
                                      width: 150.0,
                                      decoration: BoxDecoration(
                                          color: Colors.orangeAccent,
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.orangeAccent,
                                                offset: Offset(4.0, 4.0),
                                                blurRadius: 15.0,
                                                spreadRadius: 1.0),
                                            BoxShadow(
                                                color: Colors.purple,
                                                offset: Offset(-4.0, -4.0),
                                                blurRadius: 15.0,
                                                spreadRadius: 1.0),
                                          ]),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Icon(Icons.add_circle,size: 50.0,
                                            color: Colors.white,)
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      height: 150.0,
                                      width: 150.0,
                                      decoration: BoxDecoration(
                                          color: Colors.orangeAccent,
                                          borderRadius: BorderRadius.all(Radius.circular(50)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.orangeAccent,
                                                offset: Offset(4.0, 4.0),
                                                blurRadius: 15.0,
                                                spreadRadius: 1.0),
                                            BoxShadow(
                                                color: Colors.purple,
                                                offset: Offset(-4.0, -4.0),
                                                blurRadius: 15.0,
                                                spreadRadius: 1.0),
                                          ]),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Icon(Icons.help_outline,size: 50.0,
                                            color: Colors.black,)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
//                    _submitButton(),
//                    SizedBox(height: height * .14),
//                    _loginAccountLabel(),
                    ],
                  ),
                ),
              ),
//            Positioned(top: 40, left: 0, child: _backButton()),
            ],
          ),
        ),
      );
  }
}
