class TreatmentItem {
  String imageURL;
  String titleText;
  String bodyText;
  String duration;
  String priceRange;
  String remarks;

  TreatmentItem(
      {String imageURL,
      String titleText,
      String bodyText,
      String duration,
      String priceRange,
      String remarks}) {
    this.imageURL = imageURL;
    this.titleText = titleText;
    this.bodyText = bodyText;
    this.duration = duration;
    this.priceRange = priceRange;
    this.remarks = remarks;
  }
}
