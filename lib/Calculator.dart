import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class Calculator extends ChangeNotifier {
  final compController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    compController.dispose();
  }

  compute() {
    String text = compController.text;
    compController.text = text.interpret().toString();
  }

  setValue(String value) {
    String str = compController.text;
    switch (value) {
      case "C":
        compController.clear();
        break;
      case "DEL":
        compController.text = str.substring(0, str.length - 1);
        break;
      case "x":
        compController.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        compController.text += value;
    }
  }
}
