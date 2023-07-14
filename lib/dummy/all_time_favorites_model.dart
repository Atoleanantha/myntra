
class AllTimeFavoriteModel{
  AllTimeFavoriteModel({required this.title,required this.priceRange,required this.img});
  String title;
  int priceRange;
  String img;
}

List allTimeFavoriteList=[
  AllTimeFavoriteModel(title: "Kurta Sets", priceRange: 1099, img: "images/all time favorites/kurts set1.jpg"),
  AllTimeFavoriteModel(title: "Tops", priceRange: 499, img: "images/all time favorites/tops1.jpg"),
  AllTimeFavoriteModel(title: "Kurtas", priceRange: 599, img: "images/all time favorites/kurta1.jpg"),
  AllTimeFavoriteModel(title: "T-Shirts", priceRange: 499, img: "images/all time favorites/Tshirt1.jpg"),
  AllTimeFavoriteModel(title: "Shirts", priceRange: 499, img: "images/all time favorites/Tshirt1.jpg"),
  AllTimeFavoriteModel(title: "Saree", priceRange: 1099, img: "images/all time favorites/saree.png"),

];