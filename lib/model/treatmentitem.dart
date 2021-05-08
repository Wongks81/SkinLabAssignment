class TreatmentItem {
  String imageURL;
  String titleText;
  String bodyText;
  String duration;
  String priceRange;
  String whatsappAPI;
  String detailsPageRoute;
  String shopRoute;
  String remarks;

  TreatmentItem(
      {String imageURL,
      String titleText,
      String bodyText,
      String duration,
      String priceRange,
      String whatsappAPI,
      String detailsPageRoute,
      String shopRoute,
      String remarks}) {
    this.imageURL = imageURL;
    this.titleText = titleText;
    this.bodyText = bodyText;
    this.duration = duration;
    this.priceRange = priceRange;
    this.whatsappAPI = whatsappAPI;
    this.detailsPageRoute = detailsPageRoute;
    this.shopRoute = shopRoute;
    this.remarks = remarks;
  }
}
