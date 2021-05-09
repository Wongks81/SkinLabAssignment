import 'package:flutter/material.dart';

class SessionsDropDown extends StatefulWidget {
  List<String> sessions;
  String value;

  SessionsDropDown({List<String> sessions}) {
    this.sessions = sessions;
    this.value = sessions.first;
  }

  @override
  _SessionsDropDownState createState() => _SessionsDropDownState();
}

class _SessionsDropDownState extends State<SessionsDropDown> {
  List<String> sessionList = [];
  String value;

  @override
  void initState() {
    sessionList = widget.sessions;
    value = widget.value;
    super.initState();
  }

  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Container(
        height: 30,
        child: DropdownButton<String>(
          dropdownColor: Colors.yellow[200],
          value: value, //current selected item
          items: sessionList
              .map((categories) => DropdownMenuItem<String>(
                    child: Text(
                      categories,
                      style: TextStyle(color: Colors.brown[300], fontSize: 15),
                    ),
                    value: categories,
                  ))
              .toList(),
          onChanged: (value) => setState(() {
            this.value = value;
          }),
        ),
      ),
    );
  }
}
