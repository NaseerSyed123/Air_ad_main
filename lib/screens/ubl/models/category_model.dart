class CategoryModel{
   String title;
   String imagePath;

   CategoryModel({this.title, this.imagePath});
}

List<CategoryModel> dummyCategoryList = [
  CategoryModel(
    title: 'Burger',
    imagePath: 'assets/images/pizza.jpg'
  ),
  CategoryModel(
      title: 'Chicken',
      imagePath: 'assets/images/chicken.jpg'
  ),
  CategoryModel(
      title: 'Rice',
      imagePath: 'assets/images/plao.jpg'
  ),
  CategoryModel(
      title: 'Pizza',
      imagePath: 'assets/images/burger.jpg'
  ),

];