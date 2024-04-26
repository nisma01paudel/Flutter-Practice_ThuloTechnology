import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    // print(_count);
    notifyListeners();
  }

  void decrement() {
    // if (_count > 0) {
    _count--;
    // }

    notifyListeners();
  }
}
