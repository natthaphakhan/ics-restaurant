import 'package:flutter/material.dart';
import 'package:ics/models/restaurant_model.dart';
import 'package:ics/providers/restaurant_data_provider.dart';
import 'package:provider/provider.dart';

class RestaurantDetail extends StatelessWidget {
  const RestaurantDetail({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<RestaurantDataProvider>(context, listen: false);
    List<DataModel> data =
        provider.list.where((list) => list.id == id).toList();

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 45),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              data[0].profileImageUrl!,
              height: 200,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 30),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 290,
                      child: Text(
                        data[0].name!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(19, 75, 138, 1),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            data[0].rating.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(19, 75, 138, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: const [
                    Text(
                      'Address : ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(child: SizedBox())
                  ],
                ),
                Text(
                  data[0].address!,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: const [
                    Text(
                      'Opening Hour : ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(child: SizedBox())
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Monday: ${data[0].operationTime![0].timeOpen} – ${data[0].operationTime![0].timeClose}\nTuesday: ${data[0].operationTime![1].timeOpen} – ${data[0].operationTime![1].timeClose}\nWednesday: ${data[0].operationTime![2].timeOpen} – ${data[0].operationTime![2].timeClose}\nThursday: ${data[0].operationTime![3].timeOpen} – ${data[0].operationTime![3].timeClose}\nFriday: ${data[0].operationTime![4].timeOpen} – ${data[0].operationTime![4].timeClose}\nSaturday: ${data[0].operationTime![5].timeOpen} – ${data[0].operationTime![5].timeClose}\nSunday: ${data[0].operationTime![6].timeOpen} – ${data[0].operationTime![6].timeClose}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const Expanded(child: SizedBox())
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
