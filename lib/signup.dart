import 'package:flutter/material.dart';
import 'package:myapp2/login.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Signup(),
    );
  }
}

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.cyan,size: 20,),
          onPressed: () {
            Navigator.pop(context);
          },
           ),
        title: Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent,fontSize: 15,),),centerTitle:true ,
      ),

      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width:MediaQuery.of(context).orientation==Orientation.portrait? MediaQuery.of(context).size.width*0.8:MediaQuery.of(context).size.width*0.5,
                  height: MediaQuery.of(context).orientation==Orientation.portrait? MediaQuery.of(context).size.height*0.08:MediaQuery.of(context).size.height*0.12,
                  decoration: BoxDecoration(
                    color: Color(0XFF3B5998),borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width:30,
                        height: 30,
                        margin: EdgeInsets.only(left: 50),
                        decoration: BoxDecoration(shape: BoxShape.rectangle,border: Border.all(color: Colors.white,width: 1),image: DecorationImage(image: AssetImage('assets/fb.png'))),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 20),
                        child: Text('Sign up with Facebook',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 20),
                  child: Text('______________OR______________',style: TextStyle(fontSize: 20,),),
                ),
                TextFormField(decoration: InputDecoration(hintText: '    Username',hintStyle: TextStyle(color: Colors.grey)),),
                TextFormField(decoration: InputDecoration(hintText: '    First Name',hintStyle: TextStyle(color: Colors.grey)),),
                TextFormField(decoration: InputDecoration(hintText: '    Last Name',hintStyle: TextStyle(color: Colors.grey)),),
                TextFormField(decoration: InputDecoration(hintText: '    Tel no.(optional)',hintStyle: TextStyle(color: Colors.grey)),),
                TextFormField(decoration: InputDecoration(hintText: '    Password',hintStyle: TextStyle(color: Colors.grey)),),
                TextFormField(decoration: InputDecoration(hintText: '    Confirm Password',hintStyle: TextStyle(color: Colors.grey)),),

            InkWell(
             onTap: () {
           Navigator.push(
            context,MaterialPageRoute(builder: (context) => Login()),
                          );
           },
       child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50),
        width: MediaQuery.of(context).orientation==Orientation.portrait? MediaQuery.of(context).size.width*0.8:MediaQuery.of(context).size.width*0.5,
        height: MediaQuery.of(context).orientation==Orientation.portrait? MediaQuery.of(context).size.height*0.08:MediaQuery.of(context).size.height*0.12,
        decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(30)),
        child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    ),


                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('By Joining you agree to our',style: TextStyle(color: Colors.black,fontSize: 10),),
                      Text(' Terms',style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                      Text('&',style: TextStyle(color: Colors.black,fontSize: 10),),
                      Text('Privacy Policy',style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                    ],
                  ),
                )
              ],
            ),

          ),
        ],
      ),
    );
  }
}
