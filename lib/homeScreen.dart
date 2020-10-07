import 'package:community/configuration.dart';
import 'package:flutter/material.dart';

import 'Screen2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  Color color = primaryGreen;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          })
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xOffset = 200;
                              yOffset = 130;
                              scaleFactor = 0.7;
                              isDrawerOpen = true;
                            });
                          },
                        ),
                  Column(
                    children: [
                      Text("Location"),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          Text("Maadi")
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/profile.png"),
                    radius: 25,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text('Search for anything'),
                  Icon(Icons.settings)
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        for (int w = 0; w < categories.length; w++) {
                          if (w == index) continue;
                          categories[w]['color'] = Colors.grey[700];
                        }
                        categories[index]['color'] = Colors.red;
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              categories[index]['iconPath'],
                              height: 40,
                              width: 40,
                              color: categories[index]['color'],
                              scale: 0.6,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[300],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: shadowList,
                          ),
                          margin: EdgeInsets.only(top: 30),
                        ),
                        Hero(
                          tag: 1,
                          child: Align(
                            child: Image.asset("images/image1.png"),
                          ),
                        )
                      ],
                    )),
                    Expanded(
                        child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "Andrew",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "Dynamics CRM Expert",
                            style: TextStyle(fontSize: 15),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              ),
                              Text("Available")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: primaryGreen,
                              ),
                              Text(
                                "Distance 3.6 KM",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[700]),
                              )
                            ],
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(top: 50, bottom: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ))
                  ],
                ),
              ),
            ),
            Container(
              height: 240,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo[300],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: shadowList,
                        ),
                        margin: EdgeInsets.only(top: 30),
                      ),
                      Align(
                        child: Image.asset("images/image2.png"),
                      )
                    ],
                  )),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "Mario",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "Ninja Developer",
                          style: TextStyle(fontSize: 15),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove_circle,
                              color: Colors.red,
                            ),
                            Text("Busy")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: primaryGreen,
                            ),
                            Text(
                              "Distance 8.00 KM",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[700]),
                            )
                          ],
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(top: 50, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
