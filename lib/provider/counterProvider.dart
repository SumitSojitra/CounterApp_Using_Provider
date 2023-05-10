import 'package:counter_flutter_app/models/counterModel.dart';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int c = 0;
  Counter counter = Counter(cnt: 0);
  increseCounter() {
    counter.cnt++;
    notifyListeners();
  }
}
