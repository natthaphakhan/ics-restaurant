import 'package:flutter/material.dart';
import 'package:ics/models/restaurant_model.dart';
import 'package:ics/providers/restaurant_data_provider.dart';
import 'package:provider/provider.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<RestaurantDataProvider>(context, listen: false);
    List<DataModel> data =
        provider.list.where((list) => list.id == id).toList();
    List listImage = data[0].images!;

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Text(
                    'Images',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(child: SizedBox())
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.network(
                      listImage[0],
                      width: double.maxFinite,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Image.network(
                    listImage[1],
                    width: double.maxFinite,
                    fit: BoxFit.fitWidth,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Image.network(
                      listImage[2],
                      width: double.maxFinite,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
