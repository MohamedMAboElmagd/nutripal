import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: meal_plan(),
    );
  }
}

class meal_plan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/food.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.darken)),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Padding(
                      padding: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).padding +
                              EdgeInsets.only(top: 150)
                          : MediaQuery.of(context).padding +
                              EdgeInsets.only(top: 50),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'YOUR MEAL PLAN\n IS READY!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '\n- Best price comparisons for your\n ingredients specific to your budget\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '- Hundreds of recipes\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '- Log your progress to stay on track\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '- Exclusive content',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Container(
                        margin: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).padding +
                                EdgeInsets.only(top: 100, bottom: 20)
                            : MediaQuery.of(context).padding +
                                EdgeInsets.only(top: 20, bottom: 20),
                        child: Text(
                          'Get your meal plan',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
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
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
