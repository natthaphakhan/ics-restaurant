import 'package:flutter/material.dart';

class StoreDetail extends StatelessWidget {
  const StoreDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              'https://images.unsplash.com/photo-1587174147003-eb7dc051122b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMDcxMTl8MHwxfHNlYXJjaHwyfHxzaG9wJTIwcmVzdGF1cmFudCUyMGJyZWFkfGVufDB8fHx8MTY0NjM2Nzg3Mg&ixlib=rb-1.2.1&q=80&w=1080',
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
                    const SizedBox(
                      width: 290,
                      child: Text(
                        'DAI LOU MODERN CHINESE CUISINE',
                        style: TextStyle(
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
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            '4.5',
                            style: TextStyle(
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
                const Text(
                  '55/5 Soi Phahon Yothin 2, Khwaeng Samsen Nai, Khet Phaya Thai, Krung Thep Maha Nakhon 10400, Thailand',
                  style: TextStyle(
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
                  children: const [
                    Text(
                      'Monday: 10:00 AM – 6:00 PM\nTuesday: 10:00 AM – 6:00 PM\nWednesday: 10:00 AM – 6:00 PM\nThursday: 10:00 AM – 6:00 PM\nFriday: 10:00 AM – 6:00 PM\nSaturday: Closed\nSunday: Closed',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Expanded(child: SizedBox())
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
