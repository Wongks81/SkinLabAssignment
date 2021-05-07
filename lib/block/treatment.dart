import 'package:assignment/block/treatment_model.dart';
import 'package:flutter/material.dart';

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
                title: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    treatment.accordianText,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 2, color: Colors.brown[300]),
                  ),
                ),
              );
            },
            body: ListTile(
              isThreeLine: true,
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
                    color: Colors.grey[700],
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
      resizeToAvoidBottomInset: false,
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
    bodyText: '\n120 mins\t \$482 to \$514 NETT\n',
    subTitleText:
        "Achieve glass skin with the combination of chemical peels and advanced pulsed light technology. ",
    accordianText: 'Signature Medical Peel & I2PL',
  ));

  myList.add(TreatmentItem(
    bodyText: '\n120 mins\t \$482 to \$514 NETT\n',
    subTitleText:
        'Pair Aqua Peel Facial with pulsed light technology for an all-rounded skin revival.',
    accordianText: 'Aqua Peel & I2PL',
  ));

  myList.add(TreatmentItem(
    bodyText: '\n120 mins\t \$428 to \$460 NETT\n',
    subTitleText:
        'Combine gentle milk enzymes with pulsed light technology to rejuvenate and moisturise dry skin.',
    accordianText: 'Milk Peel & I2PL',
  ));

  myList.add(TreatmentItem(
    bodyText: '\n120 mins\t \$482 to \$514 NETT\n',
    subTitleText:
        'Uses \"diamond\" tips and combinesd with pulsed light technology to bring the bling to your skin.',
    accordianText: 'Diamond Peel & I2PL',
  ));

  myList.add(TreatmentItem(
    bodyText: '\n120 mins\t \$418 to \$450 NETT\n',
    subTitleText:
        'Extracting the clam and soothing benefits of oatmeal to reduce skin redness and even out the skin tone.',
    accordianText: 'Oatmeal Facial & I2PL',
  ));

  return myList;
}
