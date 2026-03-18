import 'dart:convert';

Foodmodel foodmodelFromJson(String str) => Foodmodel.fromJson(json.decode(str));

String foodmodelToJson(Foodmodel data) => json.encode(data.toJson());

class Foodmodel {
  List<Bbq> bbqs;
  List<Bbq> bestFoods;
  List<Bbq> breads;
  List<Bbq> burgers;
  List<Bbq> chocolates;
  List<Bbq> desserts;
  List<Bbq> drinks;
  List<Bbq> friedChicken;
  List<Bbq> iceCream;
  List<Bbq> pizzas;
  List<Bbq> porks;
  List<Bbq> sandwiches;
  List<Bbq> sausages;
  List<Bbq> steaks;
  List<Bbq> ourFoods;
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
    bbqs: List<Bbq>.from(json["bbqs"].map((x) => Bbq.fromJson(x))),
    bestFoods: List<Bbq>.from(json["best-foods"].map((x) => Bbq.fromJson(x))),
    breads: List<Bbq>.from(json["breads"].map((x) => Bbq.fromJson(x))),
    burgers: List<Bbq>.from(json["burgers"].map((x) => Bbq.fromJson(x))),
    chocolates: List<Bbq>.from(json["chocolates"].map((x) => Bbq.fromJson(x))),
    desserts: List<Bbq>.from(json["desserts"].map((x) => Bbq.fromJson(x))),
    drinks: List<Bbq>.from(json["drinks"].map((x) => Bbq.fromJson(x))),
    friedChicken: List<Bbq>.from(
      json["fried-chicken"].map((x) => Bbq.fromJson(x)),
    ),
    iceCream: List<Bbq>.from(json["ice-cream"].map((x) => Bbq.fromJson(x))),
    pizzas: List<Bbq>.from(json["pizzas"].map((x) => Bbq.fromJson(x))),
    porks: List<Bbq>.from(json["porks"].map((x) => Bbq.fromJson(x))),
    sandwiches: List<Bbq>.from(json["sandwiches"].map((x) => Bbq.fromJson(x))),
    sausages: List<Bbq>.from(json["sausages"].map((x) => Bbq.fromJson(x))),
    steaks: List<Bbq>.from(json["steaks"].map((x) => Bbq.fromJson(x))),
    ourFoods: List<Bbq>.from(json["our-foods"].map((x) => Bbq.fromJson(x))),
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

class Bbq {
  String id;
  String img;
  String name;
  String dsc;
  double price;
  int rate;
  String country;

  Bbq({
    required this.id,
    required this.img,
    required this.name,
    required this.dsc,
    required this.price,
    required this.rate,
    required this.country,
  });

  factory Bbq.fromJson(Map<String, dynamic> json) => Bbq(
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
