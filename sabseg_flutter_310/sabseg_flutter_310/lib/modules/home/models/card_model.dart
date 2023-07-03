import 'package:flutter/material.dart';

enum CardCategory { rehersal, recording }

class CardModel {
  final int id;
  final String name;
  final String thumbnailPath;
  final Color gColor;
  final List<CardCategory> categories;

  CardModel(
      {required this.id,
      required this.name,
      required this.thumbnailPath,
      required this.gColor,
      required this.categories});
}
