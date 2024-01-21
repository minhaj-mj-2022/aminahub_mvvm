import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/utils/theme.dart';
import 'package:flutter/material.dart';

class AdDetailsScreen extends StatelessWidget {
  final String title;
  final String imageUrl;

  const AdDetailsScreen({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ad Details'),
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
              child: Container(
                margin: EdgeInsets.only(
                    left: getSrnWidth(570),
                    right: getSrnWidth(10),
                    top: getSrnHeight(2),
                    bottom: getSrnHeight(72)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.btnBackgroundColor2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.bookmark,
                        )),
                    Text(
                      "|",
                      style: TextStyle(fontSize: getSrnHeight(10)),
                    ),
                    const IconButton(
                        onPressed: null, icon: Icon(Icons.share_rounded))
                  ],
                ),
              ),
            ),

            // Title
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    "Unleash the Excitement: Join Us for an Unforgettable Experience!",
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: getSrnHeight(5),
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
                  )
                ],
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Share'),
            ),

            ElevatedButton(
              onPressed: () {},
              child: const Text('Favorite'),
            ),
          ],
        ),
      ),
    );
  }
}
