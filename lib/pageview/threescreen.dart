import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThreeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ThreeScreenState();
  }
}

class ThreeScreenState extends State<ThreeScreen> {
  String saveitem = "data";

  void save() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('appopen', saveitem);
  }

  void initState() {
    save();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bg.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 75, left: 20),
                    child: Text(
                      "TeamWork ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 40,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0, left: 30, right: 30),
                    child: Text(
                      "Talent wins games, but teamwork and intelligence win championships.",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 70)
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Image.asset("assets/hero-motio.gif"),
                    ),
                  ),
                ),
              ),
            ),
            // Text("hello world its me shahsank sahai"),
          ],
        ),
      ),
    );
  }
}
