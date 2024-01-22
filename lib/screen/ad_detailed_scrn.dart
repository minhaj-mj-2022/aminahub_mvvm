import 'package:aminahub/utils/buttons.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:flutter/material.dart';

class AdDetailsScreen extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String adsCategory;

  const AdDetailsScreen({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.adsCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ad title'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageUrl), fit: BoxFit.cover),
              ),
              width: double.infinity,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SecondaryBtn(
                        btnText: 'Call',
                        onPressed: () {},
                        iconData: Icons.call,
                      ),
                      SecondaryBtn(
                        btnText: 'Chat',
                        onPressed: () {},
                        iconData: Icons.chat,
                      ),
                      SecondaryBtn(
                        btnText: 'Mail',
                        onPressed: () {},
                        iconData: Icons.mail,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getSrnHeight(5),
                  ),
                  const Text(
                    "Unleash the Excitement: Join Us for an Unforgettable Experience!",
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: getSrnHeight(8),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined),
                      SizedBox(
                        width: getSrnWidth(10),
                      ),
                      const Text(
                        "Mohammadpur, Dhaka, Bangladesh",
                        maxLines: 2,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getSrnHeight(5),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.timer_outlined),
                      SizedBox(
                        width: getSrnWidth(10),
                      ),
                      const Text(
                        "Posted on 01-01-2024, saturday, 08:25",
                        maxLines: 2,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getSrnHeight(12),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: getSrnWidth(150)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Ad Status"),
                        Row(
                          children: [
                            const Text(
                              "Active",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: getSrnWidth(8)),
                            const Icon(
                              Icons.check,
                              color: Colors.green,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: getSrnWidth(150)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ad Category"),
                        Text(
                          "IT Training",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getSrnHeight(10),
                  ),
                  const Text(
                    "Ad Description:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "demo Descriptions",
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
