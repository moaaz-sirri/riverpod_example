import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends ChangeNotifier {
  int counter = 0;

  void increase() {
    counter++;
    notifyListeners();
  }

  void decrease() {
    counter--;
    notifyListeners();
  }
}

final counterNotifier =
    ChangeNotifierProvider<CounterNotifier>((ref) => CounterNotifier());
