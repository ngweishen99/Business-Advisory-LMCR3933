import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewData extends StatefulWidget {
  @override
  _NewDataState createState() => _NewDataState();
}

class _NewDataState extends State<NewData> {
  String colorvalue, saleyear;
  int saleval;

  getColorValue(colorvalue) {
    this.colorvalue = colorvalue;
  }

  getSaleYear(saleyear) {
    this.saleyear = saleyear;
  }

  getSaleVal(saleval) {
    this.saleval = saleval;
  }

  createData() {
    DocumentReference ds =
        Firestore.instance.collection('sales').document(saleyear);
    Map<String, dynamic> tasks = {
      'saleYear': saleyear,
      'saleVal': saleval,
      'colorVal': colorvalue,
    };
    ds.setData(tasks).whenComplete(() {
      print('Task created');
    });
  }

  hexColor(String colorhexcode) {
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppBar(
              leading: BackButton(
                color: Colors.white,
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text('Year Value Update'),
              backgroundColor: Colors.deepOrange,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: TextField(
                      onChanged: (String year) {
                        getSaleYear(year);
                      },
                      decoration: InputDecoration(labelText: 'Year: '),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: TextField(
                      onChanged: (String val) {
                        getSaleVal(int.parse(val));
                      },
                      decoration: InputDecoration(labelText: 'Annual Value: '),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: TextField(
                      onChanged: ((String color) {
                        getColorValue("0xff" + (color.replaceAll('#', '')));
                      }),
                      decoration: InputDecoration(
                          labelText: 'Color Code: ',
                          helperText: 'Example: #33daff'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: 150,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          color: Colors.grey,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          color: Colors.green,
                          onPressed: () {
                            createData();
                            Navigator.of(context).pop(true);
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
