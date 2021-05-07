// class TreatmentItem {
//   String expandedValue;
//   String headerValue;
//   bool isExpanded;

//   TreatmentItem({String expandedValue, String headerValue, bool isExpanded}) {
//     this.expandedValue = expandedValue;
//     this.headerValue = headerValue;
//     this.isExpanded = false;
//   }
// }

class TreatmentItem {
  String accordianText;
  String bodyText;
  String subTitleText;
  bool isExpanded;

  TreatmentItem(
      {String bodyText,
      String accordianText,
      String subTitleText,
      bool isExpanded}) {
    this.bodyText = bodyText;
    this.accordianText = accordianText;
    this.subTitleText = subTitleText;
    this.isExpanded = false;
  }
}
