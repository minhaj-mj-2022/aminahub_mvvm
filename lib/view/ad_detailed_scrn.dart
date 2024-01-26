import 'package:aminahub/utils/buttons.dart';
import 'package:aminahub/utils/size_config.dart';
import 'package:flutter/material.dart';

class AdDetailsScreen extends StatelessWidget {
  final String id,
      title,
      imageUrl,
      adsCategory,
      locationState,
      timePosted,
      category,
      description;
  final bool isActive;

  const AdDetailsScreen({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.adsCategory,
    required this.locationState,
    required this.timePosted,
    required this.isActive,
    required this.category,
    required this.description,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
                    image: NetworkImage(imageUrl), fit: BoxFit.cover),
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
                  Text(
                    title,
                    maxLines: 3,
                    style: const TextStyle(
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
                      Text(
                        locationState,
                        maxLines: 2,
                        style: const TextStyle(fontSize: 17),
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
                      Text(
                        timePosted,
                        maxLines: 2,
                        style: const TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getSrnHeight(12),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: getSrnWidth(160)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Ad Status:",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: getSrnWidth(126),
                        ),
                        Row(
                          children: [
                            const Text(
                              "Active",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: getSrnWidth(8)),
                            Icon(
                              isActive ? Icons.check : Icons.close,
                              color: isActive ? Colors.green : Colors.red,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: getSrnWidth(160)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Ad Category:",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          width: getSrnWidth(90),
                        ),
                        Text(
                          category,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
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
                  Text(description, style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
