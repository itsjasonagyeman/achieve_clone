import 'package:flutter/material.dart';

class SaveInvestTabChange extends ChangeNotifier{
  bool _isEurobond = false;
  bool _isDigisave = true;
  bool _isGlobal = false;

  bool get isEurobond => _isEurobond;
  bool get isDigisave=> _isDigisave;
  bool get isGlobal=> _isGlobal;

  void digisave(){
    _isDigisave = true;
    _isEurobond = false;
    _isGlobal = false;
    
    notifyListeners();
  }

  void eurobond(){
    _isDigisave = false;
    _isEurobond = true;
    _isGlobal = false;
    
    notifyListeners();
  }

  void global(){
    _isDigisave = false;
    _isEurobond = false;
    _isGlobal = true;
    
    notifyListeners();
  }

}