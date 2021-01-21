import 'package:flutter/material.dart';

class PremierThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0.0,
        iconTheme: IconThemeData(opacity: 20, size: 10, color: Colors.black),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/images/premier.jpg',
                      ),
                    )),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Premier Three Consulting Firm',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '@ Subang Java, Selangor',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'About Company',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Premier Three Consulting Firm is a globally renowned foreign business advisory firm, who is helping investor around the glove to expand their business in different region. We are ready to assist you to know more about Laws, rules and regulations. We can assist to register company, get multi-currency business bank account, get idea about appropriate business licence, and get cheapest monthly accounting audit and income tax filling.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Center(
                        child: Container(
                          width: 200,
                          height: 58,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.orange,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40)),
                                      elevation: 16,
                                      backgroundColor: Colors.orange,
                                      child: Container(
                                        height: 150,
                                        width: 200,
                                        child: ListView(children: <Widget>[
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                            child: Text(
                                              'Contact Number',
                                              style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            color: Colors.white,
                                            thickness: 3,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                            child: Text(
                                              '(+6012) 471 0688',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ]),
                                      ),
                                    );
                                  });
                            },
                            child: Text('Contact Number'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
