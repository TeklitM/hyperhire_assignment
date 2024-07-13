class Product {
  String productName;
  String productImage;
  int productRank;
  List<String> productDetail;
  double productRating;
  int productReview;
  List<String> productTags;

  Product(
      {required this.productName,
      required this.productImage,
      required this.productRank,
      required this.productDetail,
      required this.productRating,
      required this.productReview,
      required this.productTags});
}
