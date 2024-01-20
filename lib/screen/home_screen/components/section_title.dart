import 'package:aminahub/utils/size_config.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.press,
  });

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getSrnWidth(35)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: getSrnWidth(45),
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: press,
            child: const Text(
              "See More",
              style: TextStyle(color: Color(0xFFFAAB37)),
            ),
          ),
        ],
      ),
    );
  }
}
