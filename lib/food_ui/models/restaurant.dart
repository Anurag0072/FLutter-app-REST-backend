import 'food.dart';

class Restaurant {
  String name;
  //String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  // num // score;
  Map<String, List<Food>> menu;
  Restaurant({
    required this.name,
  //  required this.waitTime,
    required this.distance,
    required this.label,
    required this.logoUrl,
    required this.desc,
    // required this.// score,
    required this.menu,
  });

  static Restaurant generateRestaurant() {
    return Restaurant(
        name: 'Gondwana_Club',
       // waitTime: "",
        distance: '',
        label: 'Restaurant',
        logoUrl: 'assets/images/icon.png',
        desc: 'club  menu',
        // score: 4.7,
        menu: {
          'Snacks & Starter': Food.generateSnackFood()!,
          'Veg': Food.generateRecommendFoods(),
          'Non-veg': Food.generatePopularFood()!,
          'Bread & Rice': Food.generateExtraFood()!,
          'Dessert': Food.generateDessertFood(),
        });
  }
}
