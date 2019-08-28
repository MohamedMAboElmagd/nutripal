import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/step3.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Step2(),
    );
  }
}

class Step2 extends StatefulWidget {
  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  bool ismale = false;
  bool isfemale = true;

  void Gendermale() {
    setState(() {
      ismale = true;
      isfemale = false;
    });
  }

  void Genderfemale() {
    setState(() {
      ismale = false;
      isfemale = true;
    });
  }

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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "STEP 2 of 5\n",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "ABOUT YOU \n",
                style: TextStyle(color: Color(0xFF33CCAA), fontSize: 25),
              ),
              Text("Your info helps us design your perfect plan ."),
              // onTap: ,
              Padding(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        child: Text("Male",
                            style: TextStyle(
                              color: ismale == true
                                  ? Colors.white
                                  : Colors.greenAccent,
                            )),
                        decoration: BoxDecoration(
                            color: ismale == true ? Colors.cyan : Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Color(0xFF33CCAA),
                            )),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.width * 0.4
                            : MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.height * 0.05
                            : MediaQuery.of(context).size.height * 0.15,
                      ),
                      onTap: () {
                        Gendermale();
                      },
                    ),
                    InkWell(
                      onTap: () {
                        Genderfemale();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          child: Text(
                            "Female",
                            style: TextStyle(
                                color: isfemale == true
                                    ? Colors.white
                                    : Colors.greenAccent),
                          ),
                          decoration: BoxDecoration(
                              color:
                                  isfemale == true ? Colors.cyan : Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Color(0xFF33CCAA),
                              )),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.4
                              : MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? MediaQuery.of(context).size.height * 0.05
                              : MediaQuery.of(context).size.height * 0.15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.grey)),
                      hintText: "Your age",
                      hintStyle:
                          TextStyle(color: Colors.grey[350], fontSize: 18)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.grey)),
                      hintText: "Your height",
                      hintStyle: TextStyle(
                        color: Colors.grey[350],
                        fontSize: 18,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.cyan)),
                      hintText: "Your Weight",
                      hintStyle: TextStyle(
                        color: Colors.grey[350],
                        fontSize: 18,
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Step3()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 30),
                  child: Container(
                    child: Text(
                      "Next Step",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.width * 0.7
                        : MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.07
                        : MediaQuery.of(context).size.height * 0.15,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
            ],
          ),
        ],
      ),
    );
  }
}
