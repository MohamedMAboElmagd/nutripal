import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage('assets/image_splash.jpg'),
                fit: BoxFit.cover,colorFilter:ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop)),),
          ),
          Positioned(
            child: AppBar(
              elevation: 1,
              backgroundColor: Colors.transparent,
            ),
          ),

          ListView
            (children: <Widget>[

            Container(
              child: Center(child: Padding(
                padding:MediaQuery.of(context).orientation==Orientation.portrait?MediaQuery.of(context).padding+EdgeInsets.only(top:200 ):MediaQuery.of(context).padding+EdgeInsets.only(top:60),
                child: Column(
                  children: <Widget>[
                    Text('Nutripal',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    Text('\nVariety.Convenience.Delivered.',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),

                  ],
                ),
              ),),

            ),


            Container(
              child: Text('Sign up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
              margin: MediaQuery.of(context).orientation==Orientation.portrait? MediaQuery.of(context).padding+EdgeInsets.only(left: 50,top: 100,right: 50):MediaQuery.of(context).padding+EdgeInsets.only(left: 200 ,top: 100,right: 200),
              alignment: Alignment.center,
              width:  MediaQuery.of(context).orientation==Orientation.portrait? MediaQuery.of(context).size.width*0.2:MediaQuery.of(context).size.width*0.02,
              height: MediaQuery.of(context).size.height*0.07,
              decoration: BoxDecoration(
                color: Colors.greenAccent,borderRadius: BorderRadius.circular(30),
              ),
            ),
            Container(
              child: Text('Log in',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
              margin: MediaQuery.of(context).orientation==Orientation.portrait? MediaQuery.of(context).padding+EdgeInsets.only(left: 50,top: 10,right: 50):MediaQuery.of(context).padding+EdgeInsets.only(left: 200 ,top: 10,right: 200),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width*0.2,
              height: MediaQuery.of(context).size.height*0.07,
              decoration: BoxDecoration(
                  color: Colors.transparent,borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.white,width: 4)
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 30,bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Already have an account?',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),),
                  Text('Login',style: TextStyle(color: Colors.greenAccent,fontSize: 10,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                ],
              ),
            ),
          ],),
        ],
      ),
    );
  }
}
