import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:ics/models/restaurant_model.dart';

class RestaurantDataProvider with ChangeNotifier {
  List<DataModel> list = [];

  Future fetchData() async {
    final response = await rootBundle.loadString('assets/example_data.json');
    final data = dataFromJson(response);
    list = data;
    notifyListeners();
  }

  filter(String filter) {
    if (filter == "") {
      return;
    }
    if (filter == "all") {
      fetchData();
      return;
    }
    final listWithFilter = list
        .where((list) =>
            list.categories![0] == filter ||
            (list.categories!.length > 1 ? list.categories![1] : '') ==
                filter ||
            (list.categories!.length > 2 ? list.categories![2] : '') == filter)
        .toList();
    list = listWithFilter;
    notifyListeners();
  }

  search(String text) {
    if (text == '') {
      fetchData();
      return;
    }
    final searchList = list.where((list) => list.name!.contains(text)).toList();
    list = searchList;
    notifyListeners();
  }
}
