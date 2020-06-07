import 'package:flutter/material.dart';
import 'package:quarantine_flutter/Joinnow.dart';
import 'package:quarantine_flutter/Widget/bezierContainer.dart';
import 'package:quarantine_flutter/Login.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
        child = CurrentPage();
        break;
      case 1:
        child = Joinnow();
        break;
      case 2:
        child = FlutterLogo(colors: Colors.red);
        break;
      case 3:
        child = FlutterLogo(colors: Colors.red);
        break;
      case 4:
        child = FlutterLogo(colors: Colors.red);
        break;
    }



    return Scaffold(
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
            icon: Icon(Icons.add_circle,color: Colors.white,),
            title: Text('Join',style:
              TextStyle(
                color: Colors.white,
              ),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore,color: Colors.white,),
            title: Text('Explore',style:
            TextStyle(
              color: Colors.white,
            ),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections_bookmark,color: Colors.white,),
            title: Text('My Courses',style:
            TextStyle(
              color: Colors.white,
            ),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.white,),
            title: Text('Settings',style:
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
    );
  }
}

class CurrentPage extends StatefulWidget{



  @override
  _CurrentPageState createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(

        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 12, top: 20, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left,size: 30.0, color: Colors.white),
            ),

          ],
        ),
      ),
    );
  }



  Widget _submitButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.white70,
              offset: Offset(2, 2),
              blurRadius: 2,
            )
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xfffbb448), Color(0xfff7892b)])),
      child: Text(
        'Register Now',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Already have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600,color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: (){
                // Navigate to the second screen
                Navigator.pushNamed(context, '/Login');
              },
              child: Text(
                'Login',
                style: TextStyle(
                    color: Color(0xfff79c4f),
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'S',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10),
          ),
          children: [
            TextSpan(
              text: 'ig',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            TextSpan(
              text: 'nup',
              style: TextStyle(color: Colors.cyanAccent, fontSize: 30),
            ),
          ]),
    );
  }

  Widget _emailPasswordWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  color: Colors.orangeAccent,
                  child: Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.home,size: 50.0,
                        color: Colors.deepPurple,)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  color: Colors.orangeAccent,
                  child: Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.collections_bookmark,size: 50.0,
                        color: Colors.brown,)
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    color: Colors.orangeAccent,
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
                    color: Colors.orangeAccent,
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
    );
  }



  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return  Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -MediaQuery.of(context).size.height * .15,
            right: -MediaQuery.of(context).size.width * .4,
            child: BezierContainer(),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height * .2),
                  _title(),
                  SizedBox(
                    height: 50,
                  ),
                  _emailPasswordWidget(),
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
          Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
    );
  }
}