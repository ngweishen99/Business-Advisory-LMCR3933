import 'package:flutter/material.dart';

class GECB extends StatelessWidget {
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
                        'assets/images/gecb.jpg',
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
                        'GE Consult Asia Sdn Bhd',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '@ Kuala Lumpur',
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
                        'We advise CEOs, entrepreneurs  and business owners on their critical corporate strategies, marketing issues and business opportunities across most industries from major Asian countries.\nWe guide our clients through the creation of marketable business documents including business plans, marketing plans, business decks, financial projections and so on.',
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
                                              '(+6017) 330 8077',
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
