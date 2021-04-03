import 'package:flutter/material.dart';
import 'package:travel_guide/travel.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/21.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.3,
            0.8
          ], colors: [
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.2),
          ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Enjoy the world",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontFamily: "NewTegomin",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "We'll help you to find the best ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 19,
                          fontFamily: "NewTegomin"),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      " experiences & adventures.",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 19,
                          fontFamily: "NewTegomin"),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TravelPage()),
                        );
                      },
                      child: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: Colors.grey,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background
                        onPrimary: Colors.white, // foreground
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
