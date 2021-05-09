import 'package:flutter/material.dart';

class CategoriesDropDown extends StatefulWidget {
  @override
  _CategoriesDropDownState createState() => _CategoriesDropDownState();
}

class _CategoriesDropDownState extends State<CategoriesDropDown> {
  static final List<String> categories = [
    'Categories',
    'Promotions',
    'Back',
    'Body',
    'Combo',
    'Essential',
    'Eye',
    'Hair',
    'Neck',
    'Premium',
    'Signature',
    'Specialty',
  ];

  String value = categories.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        dropdownColor: Colors.yellow[200],
        value: value, //current selected item
        items: categories
            .map((categories) => DropdownMenuItem<String>(
                  child: Text(
                    categories,
                    style: TextStyle(
                        color: Colors.brown[300],
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  value: categories,
                ))
            .toList(),
        onChanged: (value) => setState(() {
          this.value = value;
        }),
      ),
    );
  }
}
