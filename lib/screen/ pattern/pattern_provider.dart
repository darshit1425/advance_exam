import 'package:flutter/cupertino.dart';

class Pettren_provier extends ChangeNotifier{
  void _generatePattern(double value) {
    String pattern = '';
    for (int i = 1; i <= value; i++) {
      pattern += '${List.generate(i, (j) => j + 1).join()} \n';
    }
    // setState(() {
    //   _pattern = pattern;
    // });
  }
}