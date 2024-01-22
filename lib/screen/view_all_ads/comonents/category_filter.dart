import 'package:flutter/material.dart';

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({Key? key}) : super(key: key);

  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  String selectedCategory = 'All Categories';
  final List<String> categories = [
    'All Categories',
    'Property',
    'Events',
    'IT Training',
    'Rentals',
    'Services',
    'travel',
    'buySell',
    'homeservices',
    'lawyer',
    'roommates',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonFormField<String>(
        value: selectedCategory,
        onChanged: (String? newValue) {
          setState(() {
            selectedCategory = newValue!;
          });
        },
        items: categories.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(fontSize: 18),
            ),
          );
        }).toList(),
      ),
    );
  }
}
