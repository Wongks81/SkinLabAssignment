import 'package:flutter/material.dart';
import '../model/treatment_model.dart';

class Treatment extends StatefulWidget {
  @override
  _TreatmentState createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
  // List<TreatmentItem> _data = generateTreatment(10);
  List<TreatmentItem> _data = listTreatment();

  Widget _buildListPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((TreatmentItem treatment) {
        return ExpansionPanel(
            backgroundColor: Colors.yellow[100],
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(treatment.accordianText),
              );
            },
            body: ListTile(
              tileColor: Colors.yellow[50],
              visualDensity: VisualDensity(horizontal: 0, vertical: 4),
              title: Text(treatment.bodyText),
              subtitle: Text(treatment.subTitleText),
              trailing: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(width: 2, color: Colors.brown[300]),
                ),
                child: Text(
                  'Book Now!',
                  style: TextStyle(
                    color: Colors.brown[300],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  _data.removeWhere((currentItem) => treatment == currentItem);
                });
              },
            ),
            isExpanded: treatment.isExpanded);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[700],
        ),
        title: Image.asset('assets/homepage/skinlablogo128.png',
            fit: BoxFit.contain),
        backgroundColor: Colors.yellow[50],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: _buildListPanel(),
        ),
      ),
    );
  }
}

List<TreatmentItem> generateTreatment(int numberOfItems) {
  return List.generate(numberOfItems, (index) {
    return TreatmentItem(
      accordianText: 'Panel $index',
      bodyText: 'This is item number $index',
    );
  });
}

List<TreatmentItem> listTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
      bodyText: 'bodyText',
      accordianText: 'accordianText',
      subTitleText: 'subTitleText'));

  myList.add(TreatmentItem(
    bodyText: '\n120 mins\t \$482 tp \$514 NETT\n',
    subTitleText:
        "Brighten and achieve glass skin with this dynamic duo backed by doctors - the combination of medical-grade chemical peels and advanced intense pulsed light technology. ",
    accordianText: 'Signature Medical Peel & I2PL',
  ));

  return myList;
}
