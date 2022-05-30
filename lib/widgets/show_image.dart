import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  const ShowImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      "https://images.unsplash.com/photo-1588280991458-d759882787cf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMDcxMTl8MHwxfHNlYXJjaHwxfHxyZXN0YXVyYW50JTIwY29mZmVlfGVufDB8fHx8MTY0NjM2Nzg3NQ&ixlib=rb-1.2.1&q=80&w=1080",
                      width: double.maxFinite,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Image.network(
                    "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMDcxMTl8MHwxfHNlYXJjaHwyfHxyZXN0YXVyYW50JTIwY29mZmVlfGVufDB8fHx8MTY0NjM2Nzg3NQ&ixlib=rb-1.2.1&q=80&w=1080",
                    width: double.maxFinite,
                    fit: BoxFit.fitWidth,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1485182708500-e8f1f318ba72?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMDcxMTl8MHwxfHNlYXJjaHwzfHxyZXN0YXVyYW50JTIwY29mZmVlfGVufDB8fHx8MTY0NjM2Nzg3NQ&ixlib=rb-1.2.1&q=80&w=1080",
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
