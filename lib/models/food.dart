class Food {
  final String name;
  final String imagePath;
  final double rating;
  final double price;

  Food(
      {required this.name,
      required this.imagePath,
      required this.rating,
      required this.price});
}

List<Food> foods = [
  Food(
      name: "Sushi Tori",
      imagePath: "assets/images/sushi3.png",
      rating: 4.5,
      price: 21.00),
  Food(
      name: "Sushi Tuna",
      imagePath: "assets/images/sushi4.png",
      rating: 4.3,
      price: 19.00),
  Food(
      name: "Sushi Salmon",
      imagePath: "assets/images/sushi5.png",
      rating: 4.9,
      price: 25.00),
];
