import 'package:consultant/sales.dart';

class SalesList {
  String _saleyear;
  String _colorval;
  int _saleval;

  SalesList(this._colorval, this._saleval, this._saleyear);

  SalesList.map(dynamic obj) {
    this._colorval = obj['colorVal'];
    this._saleval = obj['saleVal'];
    this._saleyear = obj['saleYear'];
  }

  String get colorVal => _colorval;
  String get saleYear => _saleyear;
  int get saleVal => _saleval;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map['colorVal'] = _colorval;
    map['saleYear'] = _saleyear;
    map['saleVal'] = _saleval;
  }

  SalesList.fromMap(Map<String, dynamic> map) {
    this._colorval = map['colorVal'];
    this._saleyear = map['saleYear'];
    this._saleval = map['saleVal'];
  }
}
