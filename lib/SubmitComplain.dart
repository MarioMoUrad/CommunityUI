import 'package:flutter/material.dart';

import 'configuration.dart';

class SubmitComplain extends StatefulWidget {
  @override
  _SubmitComplainState createState() => _SubmitComplainState();
}

class _SubmitComplainState extends State<SubmitComplain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Submit Complain",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/profile.png"),
                radius: 20,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('images/community.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                            child: Text(
                          "Submit Complain",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: complains
                    .map((item) => GestureDetector(
                          onTap: () {
                            setState(() {
                              for (int w = 0; w < complains.length; w++) {
                                complains[w]['color'] = Colors.grey[200];
                              }
                              item['color'] = Colors.red;
                            });
                          },
                          child: Card(
                            color: item['color'],
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(item['iconPath']),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ))
                    .toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
