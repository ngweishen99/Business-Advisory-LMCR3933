import './Homepage.dart';
import './style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Duration get duration => null;

  @override
  Widget build(BuildContext context) {
    return screen(context);
  }

  Widget screen(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundclr,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Get Some \n Business Advise',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image(
                fit: BoxFit.cover,
                alignment: Alignment.center,
                image: AssetImage('assets/images/business.png')),
            SizedBox(
              height: 60,
            ),
            Container(
              child: FlatButton(
                  hoverColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  padding: EdgeInsets.all(20),
                  color: orange,
                  splashColor: Colors.orange,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
