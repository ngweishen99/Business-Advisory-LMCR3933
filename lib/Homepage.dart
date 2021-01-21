import 'package:consultant/newdata.dart';
import 'package:consultant/saleshomepage.dart';
import './snf.dart';
import './style.dart';
import 'package:flutter/material.dart';
import './evaluation.dart';
import './business.dart';
import './mckinsey.dart';
import 'premierthree.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.filter_list),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/profile.png'))),
                  ),
                ],
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                child: Text('Find your Desired \nAdvisor', style: maintext),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: bcndclr2,
                      hintText: 'type something',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Services',
                    style: maintext,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Card(
                    elevation: 5,
                    shadowColor: bcndclr2,
                    child: new InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Evaluation()));
                        print('tapped');
                      },
                      child: Column(
                        children: [
                          Container(
                              height: 60,
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/evaluation.png'))),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Self Evaluation',
                                style: cardtext,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: Card(
                    elevation: 5,
                    shadowColor: bcndclr2,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NewData()));
                        print('tapped');
                      },
                      child: Column(
                        children: [
                          Container(
                              height: 60,
                              child: Image(
                                  image:
                                      AssetImage('assets/images/growth.png'))),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Tracking Growth',
                                style: cardtext,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: Card(
                    elevation: 5,
                    shadowColor: bcndclr2,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SalesHomePage()));
                        print('tapped');
                      },
                      child: Column(
                        children: [
                          Container(
                              height: 80,
                              child: Image(
                                  image:
                                      AssetImage('assets/images/report.png'))),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Text(
                                'Report',
                                style: cardtext,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.deepOrange,
                elevation: 5,
                shadowColor: bcndclr2,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Business()));
                    print('welldone');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Business Advisory Company',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        Container(
                            height: 50,
                            width: 50,
                            child: Image(
                                image: AssetImage(
                              'assets/images/advisory.png',
                            )))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Advisory Company',
                      style: maintext,
                    ),
                  ],
                ),
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
                  child: Image(image: AssetImage('assets/images/mckinsey.jpg')),
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Snf()));
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
                  child: Image(image: AssetImage('assets/images/premier.jpg')),
                ),
                title: Text(
                  'Premier Three Consulting Firm',
                  style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
                ),
                subtitle: Text('Subang Jaya, Selangor'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PremierThree()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
