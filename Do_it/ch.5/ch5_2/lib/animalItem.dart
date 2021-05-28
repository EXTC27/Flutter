import 'package:flutter/material.dart';

class Animal {
  String animalName;
  String imagePath;
  String kind;
  bool? flyExist;

  Animal(
      {required this.animalName,
      required this.kind,
      required this.imagePath,
      this.flyExist = false});
}
