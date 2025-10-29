import 'package:flutter/foundation.dart';

class ExampleProvider extends ChangeNotifier {

  String? _data;

// CARA SET DATA
  void setDataString(String data){
    this._data = data;
    // notifyListeners();
  }

  // String? getDataString(){
  //   return this._data;
  // }

  // Cara GET DATA
  String? get getDataString => _data;

}