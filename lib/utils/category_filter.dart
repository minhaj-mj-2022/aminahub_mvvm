// // category_filter.dart
// import 'package:aminahub/utils/constant.dart';
// import 'package:flutter/material.dart';
// 
// class CategoryFilter extends StatefulWidget {
//   final ValueChanged<Map<String, String>> onCategoryChanged;
// 
//   const CategoryFilter({Key? key, required this.onCategoryChanged})
//       : super(key: key);
// 
//   @override
//   State<CategoryFilter> createState() => _CategoryFilterState();
// }
// 
// class _CategoryFilterState extends State<CategoryFilter> {
//   String selectedCategory = 'All Ads', selectedCategoryOption = 'Latest';
// 
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 12),
//       child: Row(
//         children: [
//           Expanded(
//             child: DropdownButtonFormField<String>(
//               value: selectedCategory,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedCategory = newValue!;
//                   widget.onCategoryChanged({
//                     'category': selectedCategory,
//                     'categoryOption': selectedCategoryOption,
//                   });
//                 });
//               },
//               items: constAdSategories
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(
//                     value,
//                     style: const TextStyle(fontSize: 18),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//           const SizedBox(width: 16),
//           Expanded(
//             child: DropdownButtonFormField<String>(
//               value: selectedCategoryOption,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedCategoryOption = newValue!;
//                   widget.onCategoryChanged({
//                     'category': selectedCategory,
//                     'categoryOption': selectedCategoryOption,
//                   });
//                 });
//               },
//               items: constFilterOptions
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(
//                     value,
//                     style: const TextStyle(fontSize: 18),
//                   ),
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
