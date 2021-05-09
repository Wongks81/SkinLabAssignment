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
        PopupMenuItem<int>(
          value: 1,
          child: Text('Treatment'),
        ),
        PopupMenuItem<int>(
          value: 2,
          child: Text('Prices'),
        ),
        PopupMenuItem<int>(
          value: 3,
          child: Text('Shop'),
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
    case 1:
      Navigator.pushNamed(context, '/treatment');
      break;
    case 2:
      Navigator.pushNamed(context, '/prices');
      break;
    case 3:
      Navigator.pushNamed(context, '/shop');
      break;
  }
}
