import 'package:flutter/material.dart';

class AdsCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIcon(Icons.category, 'Category 1', context),
              _buildIcon(Icons.category, 'Category 2', context),
              _buildIcon(Icons.category, 'Category 3', context),
              _buildIcon(Icons.category, 'Category 4', context),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIcon(Icons.category, 'Category 6', context),
              _buildIcon(Icons.category, 'Category 7', context),
              _buildIcon(Icons.category, 'Category 8', context),
              _buildIcon(Icons.category, 'Category 9', context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, String label, BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          label,
          style: TextStyle(fontSize: 12.0),
        ),
      ],
    );
  }
}
