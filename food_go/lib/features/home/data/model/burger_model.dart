// To parse this JSON data, do
//
//     final burgermodel = burgermodelFromJson(jsonString);

import 'dart:convert';

List<BurgerModel> burgermodelFromJson(String str) => List<BurgerModel>.from(
  json.decode(str).map((x) => BurgerModel.fromJson(x)),
);

String burgermodelToJson(List<BurgerModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BurgerModel {
  String id;
  String img;
  String name;
  String dsc;
  double price;
  int rate;
  String country;

  BurgerModel({
    required this.id,
    required this.img,
    required this.name,
    required this.dsc,
    required this.price,
    required this.rate,
    required this.country,
  });

  factory BurgerModel.fromJson(Map<String, dynamic> json) => BurgerModel(
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
