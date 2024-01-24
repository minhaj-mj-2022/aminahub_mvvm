import 'package:aminahub/utils/constant.dart';
import 'package:flutter/material.dart';

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({Key? key}) : super(key: key);

  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  String selectedCategory = 'All Categories';
  String selectedOption = 'Latest';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: DropdownButtonFormField<String>(
              value: selectedCategory,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCategory = newValue!;
                });
              },
              items: constAdSategories
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 18),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(width: 16), // Add some space between the dropdowns
          Expanded(
            child: DropdownButtonFormField<String>(
              value: selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue!;
                });
              },
              items: constFilterOptions
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 18),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
