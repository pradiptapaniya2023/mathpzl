import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'secondpage.dart';
import 'fourthpage.dart';

import 'fourthpage.dart';

class First_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return State_First_Page();
  }
}

class State_First_Page extends State<First_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("asset/images/background.png"))),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 80, 10, 10),
              child: Text(
                "Math puzzle - Pradip",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: "mathGameFont",
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 150),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("asset/images/blackboard_firstpage.png"),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Second_Page();
                              },
                            ));
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "mathGameFont",
                                fontSize: 45,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Fourth_Page();
                              },
                            ));
                          },
                          child: Text(
                            "Puzzles",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "mathGameFont",
                                fontSize: 45,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Buy Pro",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "mathGameFont",
                                fontSize: 45,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 10, 5),
                  child: Column(
                    children: [
                      Text(
                        "AD",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontFamily: "mathGameFont",
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 55,
                          width: 55,
                          child: Image.asset("asset/images/ad.png"))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(177, 15, 10, 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Wrap(
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                child: Image.asset(
                                  "asset/images/share.png",
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                child: Image.asset(
                                  "asset/images/mail.png",
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.black, width: 2)),
                        child: Center(
                          child: Text(
                            "Privacy Policy",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "mathGameFont",
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
