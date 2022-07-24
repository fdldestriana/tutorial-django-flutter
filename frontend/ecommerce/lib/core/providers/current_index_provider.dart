import 'package:flutter/cupertino.dart';

class CurrentIndex with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  int setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
    return _currentIndex;
  }
}
