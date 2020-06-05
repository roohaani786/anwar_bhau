import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
//  final VoidCallback tappu;
//  Onboard({
//    Key key,
//    this.tappu,
//  }) : super(key: key);


  @override
  Widget build(BuildContext context) {


      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.help_outline),
              ),
            ],
          ),
          backgroundColor: Colors.black,
          body: Container(
            child: Column(


              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: new Image.asset("lib/assets/images/quarantine.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Quarantine Courses",style:
                  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 30.0,right: 10.0),
                  child: Text("An e-learning initiative to provide Tech/non-tech knowledge at an affordable cost. Let's learn together.",textAlign: TextAlign.center,maxLines: 3,style:
                  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,

                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 25.0),


                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(

//                          onTap: () { Navigator.push(context, Userlogin()); },
                          child: GestureDetector(

                            onTap: (){
                              // Navigate to the second screen
                              Navigator.pushNamed(context, '/Login');
                            },
                            child: Container(

                              width: 200.0,
                              height: 50.0,



                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Align(
                                  alignment: Alignment.center,



                                      child: Text("LOGIN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),


                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text("OR",style:
                        TextStyle(
                          color: Colors.white,
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: GestureDetector(
                          onTap: (){
                            // Navigate to the second screen
                            Navigator.pushNamed(context, '/Signup');
                          },
                          child: Container(

                            width: 200.0,
                            height: 50.0,



                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Align(
                                alignment: Alignment.center,


                                    child: Text("SIGNUP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),


                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
      );
  }
}