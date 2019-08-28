import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myapp2/meal_plan.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Step5_cont(),
    );
  }
}

class Step5_cont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.cyan,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  'STEP 4 of 5\n',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  'THINGS YOU DON\'T LIKE...\n',
                  style: TextStyle(fontSize: 25, color: Colors.greenAccent),
                ),
                Text(
                  'Don\'t like something cross it off the listt\n',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  width:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.9
                          : MediaQuery.of(context).size.width * 0.5,
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.05
                          : MediaQuery.of(context).size.height * 0.12,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(blurRadius: 1, color: Colors.grey)
                      ]),
                  child: Text(
                    'avoca',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  width:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.9
                          : MediaQuery.of(context).size.width * 0.5,
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.38
                          : MediaQuery.of(context).size.height * 0.7,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(color: Colors.grey[300], blurRadius: 1)
                  ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.greenAccent)),
                            child: Text(
                              'avocado',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.greenAccent)),
                            child: Text(
                              'bread',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 70,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.greenAccent)),
                            child: Text(
                              'carrots',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.greenAccent)),
                            child: Text(
                              'cauliflower',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.greenAccent)),
                            child: Text(
                              'egss',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.greenAccent)),
                            child: Text(
                              'mushrooms',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 70,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.greenAccent)),
                            child: Text(
                              'onion',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.greenAccent)),
                            child: Text(
                              'peanuts',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.red)),
                            child: Text(
                              'potate',
                              style: TextStyle(
                                  color: Colors.red,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.greenAccent)),
                            child: Text(
                              'protein powder',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 70,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.greenAccent)),
                            child: Text(
                              'quinoa',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.greenAccent)),
                            child: Text(
                              'tofu',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'show more',
                        style:
                            TextStyle(color: Colors.greenAccent, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => meal_plan()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 80, bottom: 30),
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.8
                        : MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.08
                        : MediaQuery.of(context).size.height * 0.12,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'Next step',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
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
}
