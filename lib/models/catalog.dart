import 'dart:convert';
import 'package:flutter/animation.dart';

class CatalogModel {
  static List<Item>? items;

  //get item by ID

  static Item getById(int id) =>
      items!.firstWhere((element) => element.id == id, orElse: null);

  //get Item by position

  static Item getbyPosition(int pos) => items![pos];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    //factory helps you to decide between constructors
    return Item(
      id: map['id'].toString(),
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    ); //Decoding map to class
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      }; //Encoding data from class to map
}
