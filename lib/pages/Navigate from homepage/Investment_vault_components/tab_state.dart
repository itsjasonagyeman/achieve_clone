import 'package:flutter/material.dart';

class TabState extends ChangeNotifier{
  bool _isactiveTab = true;

  bool get isactiveTab => _isactiveTab;

  void isActive(){
    _isactiveTab = true;
    notifyListeners();
  }

   void isHistory(){
    _isactiveTab = false;
    notifyListeners();
  }

}