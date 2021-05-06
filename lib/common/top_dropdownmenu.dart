import 'package:flutter/material.dart';

class TopDropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Icon(
        Icons.menu,
        color: Colors.black,
      ),
      color: Colors.yellow[100],
      onSelected: (item) => onSelected(context, item),
      itemBuilder: (context) => [
        PopupMenuItem<int>(
          value: 0,
          child: Text('About'),
        ),
      ],
    );
  }
}

void onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      Navigator.pushNamed(context, '/about');
      break;
  }
}
