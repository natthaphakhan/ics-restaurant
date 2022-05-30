import 'package:flutter/cupertino.dart';

class ListenTabBar with ChangeNotifier {
  bool isTab = true;

  tap() {
    isTab = !isTab;
    notifyListeners();
  }

  resetTab() {
    isTab = true;
    notifyListeners();
  }
}
