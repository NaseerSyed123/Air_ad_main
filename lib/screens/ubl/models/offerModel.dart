class OfferModel {
  String titleTxt;
  String subTitleTxt;
  String imagePath;

  OfferModel({this.titleTxt, this.subTitleTxt, this.imagePath});
}

List<OfferModel> dummyOfferList = [
  OfferModel(
      titleTxt: 'Careem',
      subTitleTxt: '40% off on Car..',
      imagePath: 'assets/images/careem_banner.jpg'),
  OfferModel(
      titleTxt: 'Chughtai Lab',
      subTitleTxt: '10% off on Chug..',
      imagePath: 'assets/images/chughtai.png'),
  OfferModel(
      titleTxt: 'Food Panda',
      subTitleTxt: '40% off on Food Pa..',
      imagePath: 'assets/images/foodpanda.jpg'),
  OfferModel(
      titleTxt: 'Bata',
      subTitleTxt: '20% off on Bata',
      imagePath: 'assets/images/bata.png'),
  OfferModel(
      titleTxt: 'Stylo',
      subTitleTxt: '45% off on Stylo',
      imagePath: 'assets/images/stylo.png'),
];
