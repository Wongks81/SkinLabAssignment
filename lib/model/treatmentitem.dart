class TreatmentItem {
  String imageURL;
  String titleText;
  String bodyText;
  String duration;
  String priceRange;
  String whatsappAPI;
  String detailsPageRoute;
  String shopRoute;
  String categories;
  String remarks;
  List<String> sessions;

  TreatmentItem(
      {String imageURL,
      String titleText,
      String bodyText,
      String duration,
      String priceRange,
      String whatsappAPI,
      String detailsPageRoute,
      String shopRoute,
      String categories,
      String remarks,
      List<String> sessions}) {
    this.imageURL = imageURL;
    this.titleText = titleText;
    this.bodyText = bodyText;
    this.duration = duration;
    this.priceRange = priceRange;
    this.whatsappAPI = whatsappAPI;
    this.detailsPageRoute = detailsPageRoute;
    this.shopRoute = shopRoute;
    this.categories = categories;
    this.remarks = remarks;
    this.sessions = sessions;
  }
}
