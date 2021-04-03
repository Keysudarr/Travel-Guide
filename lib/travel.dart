import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget {
  @override
  _TravelPageState createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 70, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      tooltip: "menu",
                      splashColor: Colors.blueGrey[100],
                      onPressed: () {
                        print("menu");
                      },
                      icon: Icon(
                        Icons.short_text,
                        color: Colors.black,
                        size: 40,
                      )),
                  Container(
                    width: 60,
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.blueGrey),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/people.jpg",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: const Text.rich(
                TextSpan(
                  text: 'Hello', // default text style
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: "NewTegomin",
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                      fontSize: 35),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' what are you looking for?  ',
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print("Accomodation");
                        },
                        child: Icon(Icons.home),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent[100], // background
                          onPrimary: Colors.white, // foreground
                        ),
                      ),
                      Text("Accomodation"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print("Adventures");
                          },
                          child: Icon(Icons.explore),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pinkAccent[100], // background
                            onPrimary: Colors.white, // foreground
                          ),
                        ),
                        Text("Adventures"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print("Countries");
                          },
                          child: Icon(Icons.public),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pinkAccent[100], // background
                            onPrimary: Colors.white, // foreground
                          ),
                        ),
                        Text("Countries"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print("Flights");
                          },
                          child: Icon(Icons.flight),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pinkAccent[100], // background
                            onPrimary: Colors.white, // foreground
                          ),
                        ),
                        Text("Flights"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, right: 20, left: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Best Experiences",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      tooltip: "Experiences",
                      splashColor: Colors.blueGrey[100],
                      onPressed: () {
                        print("Experiences");
                      },
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                        size: 40,
                      )),
                ],
              ),
            ),
            Container(
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  makeItem(
                      image: 'assets/7.jpg',
                      title: "The Golden Circle, Iceland"),
                  makeItem(
                      image: 'assets/12.jpg',
                      title: "Fairy chimneys, Nevsehir"),
                  makeItem(
                      image: 'assets/5.jpg', title: "İncesu canyon, Çorum"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        fixedColor: Colors.pinkAccent,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print("home");
              },
              iconSize: 35,
            ),
            title: SizedBox(
              height: 0,
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search");
              },
              iconSize: 35,
            ),
            title: SizedBox(
              height: 0,
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                print("favorite");
              },
              iconSize: 35,
            ),
            title: SizedBox(
              height: 0,
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                print("person");
              },
              iconSize: 35,
            ),
            title: SizedBox(
              height: 0,
            ),
          ),
        ],
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 2.3 / 2.7,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
