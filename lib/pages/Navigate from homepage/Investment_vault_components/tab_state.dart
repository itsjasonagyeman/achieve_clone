import 'package:flutter/material.dart';

class TabState extends ChangeNotifier{
  bool _isactiveTab = true;
  bool _ispetra = true;
  bool _isphone = false;
  bool _isemail = false;

  bool get isactiveTab => _isactiveTab;
  bool get ispetra => _ispetra;
  bool get isphone => _isphone;
  bool get isemail => _isemail;

  void isActive(){
    _isactiveTab = true;
    notifyListeners();
  }

   void isHistory(){
    _isactiveTab = false;
    notifyListeners();
  }

  void isPetraId(){
    _ispetra = true;
    _isphone = false;
    _isemail = false;
    notifyListeners();
  }

  void isPhoneNum(){
    _isphone = true;
    _ispetra = false;
    _isemail = false;
    notifyListeners();
  }

  void isEmailAdd(){
    _isphone = false;
    _ispetra = false;
    _isemail = true;
    notifyListeners();
  }

}