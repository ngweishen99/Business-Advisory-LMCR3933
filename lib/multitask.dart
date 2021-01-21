import 'package:flutter/material.dart';

class Multitask extends StatelessWidget {
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
                        'assets/images/multitask.png',
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
                        'Multi Task Business Consultants Sdn Bhd',
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
                        'With more than 18 years of experiences specialising in providing a full range of corporate consultancy and advisory services. We have the capabilities and capacity to provide you with the best professional services in outsourcing of accounting, payroll, corporate secretarial and other application services.',
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
                                              '+60 (03)9 059 1355',
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
