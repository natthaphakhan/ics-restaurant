import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:ics/models/restaurant_model.dart';

class RestaurantDataProvider with ChangeNotifier {
  List<DataModel> list = [];

  Future readJson() async {
    final response = await rootBundle.loadString('assets/example_data.json');
    final data = dataFromJson(response);
    list = data;
    notifyListeners();
  }
}
