import 'package:community/configuration.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blueGrey[300],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("images/model.png"),
                            radius: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Andrew Kameel",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      Text("25/07/1985")
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "My Name is Andrew Kameel ,  I have graduated from Computer Science Collage Assyot University.\nI'am a Dynamics Expert with 10+ Years Experience",
                      style: TextStyle(fontSize: 15),
                    )),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(icon: Icon(Icons.share), onPressed: () {})
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(tag: 1, child: Image.asset('images/image1.png')),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Andrew Kameel",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Dynamics CRM Expert",
                    style: TextStyle(fontSize: 15),
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
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                      )
                    ],
                  ),
                ],
              ),
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 120,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        color: primaryGreen,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: primaryGreen,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        'Call',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      )),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
