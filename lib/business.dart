import './alx.dart';
import './bcm.dart';
import './daythree.dart';
import './keeya.dart';
import './multitask.dart';
import './style.dart';
import 'package:flutter/material.dart';

import 'bizadvisory.dart';
import 'gecb.dart';
import 'mckinsey.dart';
import 'premierthree.dart';
import 'snf.dart';

class Business extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BusinessState();
  }
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              color: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text('Business Advisory Company'),
            backgroundColor: Colors.deepOrange,
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    tileColor: backgroundclr,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(
                          image: AssetImage('assets/images/mckinsey.jpg')),
                    ),
                    title: Text(
                      'McKinsey & Company',
                      style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    ),
                    subtitle: Text('Kuala Lumpur'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => McKinsey()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: backgroundclr,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(image: AssetImage('assets/images/snf.png')),
                    ),
                    title: Text(
                      'S&F Consulting Firm Limited',
                      style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    ),
                    subtitle: Text('Petaling Jaya, Selangor'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Snf()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: backgroundclr,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child:
                          Image(image: AssetImage('assets/images/premier.jpg')),
                    ),
                    title: Text(
                      'Premier Three Consulting Firm',
                      style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    ),
                    subtitle: Text('Subang Jaya, Selangor'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PremierThree()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: backgroundclr,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(image: AssetImage('assets/images/gecb.jpg')),
                    ),
                    title: Text(
                      'GE Consult Asia Sdn Bhd',
                      style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    ),
                    subtitle: Text('Kuala Lumpur'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GECB()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: backgroundclr,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(
                        image: AssetImage('assets/images/mba.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    title: Text(
                      'Malaysia Biz Advisory',
                      style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    ),
                    subtitle: Text('Kuala Lumpur'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MBA()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: backgroundclr,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(
                          image: AssetImage('assets/images/multitask.png')),
                    ),
                    title: Text(
                      'Multi Task Business Consultant Sdn Bhd',
                      style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    ),
                    subtitle: Text('Kuala Lumpur'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Multitask()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: backgroundclr,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child:
                          Image(image: AssetImage('assets/images/alxtqm.jpg')),
                    ),
                    title: Text(
                      'ALX TQM & Business Cunsultants (M) Sdn Bhd',
                      style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    ),
                    subtitle: Text('Klang, Selangor'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Alx()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: backgroundclr,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(image: AssetImage('assets/images/bcm.png')),
                    ),
                    title: Text(
                      'BCM Consulting Sdn Bhd',
                      style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    ),
                    subtitle: Text('Kuala Lumpur'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Bcm()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: backgroundclr,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(image: AssetImage('assets/images/dt.png')),
                    ),
                    title: Text(
                      'Daythree Business Services Sdn Bhd',
                      style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    ),
                    subtitle: Text('Shah Alam, Selangor'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Daythree()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    tileColor: backgroundclr,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child:
                          Image(image: AssetImage('assets/images/keeya.png')),
                    ),
                    title: Text(
                      'Keeyaa Corporate Services Sdn Bhd',
                      style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                    ),
                    subtitle: Text('Kuala Lumpur'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Keeya()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
