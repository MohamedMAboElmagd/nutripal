import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/signup.dart';
import 'package:myapp2/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image_splash.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.darken)),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 15,
              child: Container(
                child: Center(
                  child: Padding(
                    padding: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).padding +
                            EdgeInsets.only(top: 200)
                        : MediaQuery.of(context).padding +
                            EdgeInsets.only(top: 30),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Nutripal',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raphtalia'),
                        ),
                        Text(
                          '\nVariety.Convenience.Delivered.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Column(
                children: <Widget>[
                  InkWell(
                    // Within the `HomePage` widget
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Container(
                      //edit padding bottom to different value
                      //  margin: MediaQuery.of(context).orientation==Orientation.portrait? MediaQuery.of(context).padding+EdgeInsets.only():MediaQuery.of(context).padding+EdgeInsets.only(),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      //  padding: MediaQuery.of(context).orientation==Orientation.portrait? MediaQuery.of(context).padding+EdgeInsets.only(left: 50,top: 100,right: 50):MediaQuery.of(context).padding+EdgeInsets.only(left: 200 ,top: 100,right: 200),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.8
                          : MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.07
                          : MediaQuery.of(context).size.height * 0.12,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 20),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      //margin: MediaQuery.of(context).orientation==Orientation.portrait? MediaQuery.of(context).padding+EdgeInsets.only(left: 50,top: 10,right: 50):MediaQuery.of(context).padding+EdgeInsets.only(left: 200 ,top: 10,right: 200),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.8
                          : MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.07
                          : MediaQuery.of(context).size.height * 0.12,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white, width: 3)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ],
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
