import 'package:aminahub/utils/size_config.dart';
import 'package:aminahub/view/view_all_ads/all_ads.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final List<String> items = [
    'Events',
    'Roommates',
    'Rentals',
    'Property',
    'It Training',
    'Jobs',
    'Cars',
    'Buy/Sell',
    'Car Services',
    'Local Biz',
    'Services',
    'Classifieds',
    'Travel',
    'Lawyers',
  ];
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getSrnWidth(750),
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black12,
      ),
      child: Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          return items.where((String item) =>
              item.toLowerCase().contains(textEditingValue.text.toLowerCase()));
        },
        onSelected: (String item) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ViewAllAdsScreen(
                selectedCategory: item,
                selectedTimeFilter: 'Latest',
              ),
            ),
          );
        },
        fieldViewBuilder: (context, controller, focusNode, onFieldSubmitted) {
          return TextField(
            controller: controller,
            focusNode: focusNode,
            onChanged: (value) {
              setState(() {
                query = value;
              });
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: getSrnHeight(8),
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: "Search services",
              prefixIcon: const Icon(Icons.search),
            ),
          );
        },
        optionsViewBuilder: (context, onSelected, options) {
          return Align(
            alignment: Alignment.topLeft,
            child: Material(
              elevation: 4,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: getSrnHeight(300),
                  maxWidth: getSrnWidth(750),
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    final option = options.elementAt(index);
                    return GestureDetector(
                      onTap: () {
                        onSelected(option);
                      },
                      child: ListTile(
                        title: Text(option),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // void navigateToNewScreen(String item) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => CategoryDetails(barTitle: item,),
  //     ),
  //   );
  // }
}
