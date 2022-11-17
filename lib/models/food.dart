class Food {
  final String name;
  final String imgPath;
  final String? description;

  static final List<Food> foods = [
    Food(name: "Pasta", imgPath: "assets/images/pasta.jpg"),
    Food(
        name: "Burger",
        imgPath: "assets/images/burger.jpg",
        description: "Delicious!"),
    Food(name: "Sushi", imgPath: "assets/images/sushi.jpeg"),
    Food(name: "Pizza", imgPath: "assets/images/pizza.jpg"),
    Food(name: "Biryani", imgPath: "assets/images/biryani.jpg"),
  ];

  Food({required this.name, required this.imgPath, this.description});
}
