class DiscountModel{
  String titleTxt;
  String imagePath;
  DiscountModel({this.titleTxt, this.imagePath});
}

List<DiscountModel> dummyDiscountList = [
  DiscountModel(
      titleTxt: 'Burger',
      imagePath: 'assets/images/pizza.jpg'
  ),
  DiscountModel(
      titleTxt: 'Chicken',
      imagePath: 'assets/images/chicken.jpg'
  ),
  DiscountModel(
      titleTxt: 'Rice',
      imagePath: 'assets/images/plao.jpg'
  ),
  DiscountModel(
      titleTxt: 'Pizza',
      imagePath: 'assets/images/burger.jpg'
  ),

];