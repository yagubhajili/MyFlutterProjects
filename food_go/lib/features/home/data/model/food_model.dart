import 'dart:convert';

Foodmodel foodmodelFromJson(String str) => Foodmodel.fromJson(json.decode(str));

String foodmodelToJson(Foodmodel data) => json.encode(data.toJson());

class Foodmodel {
  List<Food> bbqs;
  List<Food> bestFoods;
  List<Food> breads;
  List<Food> burgers;
  List<Food> chocolates;
  List<Food> desserts;
  List<Food> drinks;
  List<Food> friedChicken;
  List<Food> iceCream;
  List<Food> pizzas;
  List<Food> porks;
  List<Food> sandwiches;
  List<Food> sausages;
  List<Food> steaks;
  List<Food> ourFoods;
  Map<String, int> pagination;

  Foodmodel({
    required this.bbqs,
    required this.bestFoods,
    required this.breads,
    required this.burgers,
    required this.chocolates,
    required this.desserts,
    required this.drinks,
    required this.friedChicken,
    required this.iceCream,
    required this.pizzas,
    required this.porks,
    required this.sandwiches,
    required this.sausages,
    required this.steaks,
    required this.ourFoods,
    required this.pagination,
  });

  factory Foodmodel.fromJson(Map<String, dynamic> json) => Foodmodel(
    bbqs: List<Food>.from(json["bbqs"].map((x) => Food.fromJson(x))),
    bestFoods: List<Food>.from(json["best-foods"].map((x) => Food.fromJson(x))),
    breads: List<Food>.from(json["breads"].map((x) => Food.fromJson(x))),
    burgers: List<Food>.from(json["burgers"].map((x) => Food.fromJson(x))),
    chocolates: List<Food>.from(
      json["chocolates"].map((x) => Food.fromJson(x)),
    ),
    desserts: List<Food>.from(json["desserts"].map((x) => Food.fromJson(x))),
    drinks: List<Food>.from(json["drinks"].map((x) => Food.fromJson(x))),
    friedChicken: List<Food>.from(
      json["fried-chicken"].map((x) => Food.fromJson(x)),
    ),
    iceCream: List<Food>.from(json["ice-cream"].map((x) => Food.fromJson(x))),
    pizzas: List<Food>.from(json["pizzas"].map((x) => Food.fromJson(x))),
    porks: List<Food>.from(json["porks"].map((x) => Food.fromJson(x))),
    sandwiches: List<Food>.from(
      json["sandwiches"].map((x) => Food.fromJson(x)),
    ),
    sausages: List<Food>.from(json["sausages"].map((x) => Food.fromJson(x))),
    steaks: List<Food>.from(json["steaks"].map((x) => Food.fromJson(x))),
    ourFoods: List<Food>.from(json["our-foods"].map((x) => Food.fromJson(x))),
    pagination: Map.from(
      json["pagination"],
    ).map((k, v) => MapEntry<String, int>(k, v)),
  );

  Map<String, dynamic> toJson() => {
    "bbqs": List<dynamic>.from(bbqs.map((x) => x.toJson())),
    "best-foods": List<dynamic>.from(bestFoods.map((x) => x.toJson())),
    "breads": List<dynamic>.from(breads.map((x) => x.toJson())),
    "burgers": List<dynamic>.from(burgers.map((x) => x.toJson())),
    "chocolates": List<dynamic>.from(chocolates.map((x) => x.toJson())),
    "desserts": List<dynamic>.from(desserts.map((x) => x.toJson())),
    "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
    "fried-chicken": List<dynamic>.from(friedChicken.map((x) => x.toJson())),
    "ice-cream": List<dynamic>.from(iceCream.map((x) => x.toJson())),
    "pizzas": List<dynamic>.from(pizzas.map((x) => x.toJson())),
    "porks": List<dynamic>.from(porks.map((x) => x.toJson())),
    "sandwiches": List<dynamic>.from(sandwiches.map((x) => x.toJson())),
    "sausages": List<dynamic>.from(sausages.map((x) => x.toJson())),
    "steaks": List<dynamic>.from(steaks.map((x) => x.toJson())),
    "our-foods": List<dynamic>.from(ourFoods.map((x) => x.toJson())),
    "pagination": Map.from(
      pagination,
    ).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
}

class Food {
  String id;
  String img;
  String name;
  String dsc;
  double price;
  int rate;
  String country;

  Food({
    required this.id,
    required this.img,
    required this.name,
    required this.dsc,
    required this.price,
    required this.rate,
    required this.country,
  });

  factory Food.fromJson(Map<String, dynamic> json) => Food(
    id: json["id"],
    img: json["img"],
    name: json["name"],
    dsc: json["dsc"],
    price: json["price"]?.toDouble(),
    rate: json["rate"],
    country: json["country"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "img": img,
    "name": name,
    "dsc": dsc,
    "price": price,
    "rate": rate,
    "country": country,
  };
}
