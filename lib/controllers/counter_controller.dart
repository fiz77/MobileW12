import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  CounterController() {
    _loadCounter();
  }

  void _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    _count = prefs.getInt('counter') ?? 0;
    notifyListeners();
  }

  void increment() async {
    _count++;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', _count);
  }
}
