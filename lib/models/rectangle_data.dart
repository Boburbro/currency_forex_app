import 'package:flutter/material.dart';

class RectangleModel {
  final String id;
  final String title;
  final Color color;
  final int rank;
  final String img;

  RectangleModel({
    required this.id,
    required this.title,
    required this.color,
    required this.rank,
    required this.img,
  });
}

class RectangleData {
  final List<RectangleModel> _data = [
    RectangleModel(
      id: UniqueKey().toString(),
      title: "Win",
      color: const Color(0xFF3075FA),
      rank: 0,
      img: "assets/icons/rectangle/trophy.svg",
    ),
    RectangleModel(
      id: UniqueKey().toString(),
      title: "Lose",
      color: const Color(0xFFF94544),
      rank: 0,
      img: "assets/icons/rectangle/fire-alt.svg",
    ),
    RectangleModel(
      id: UniqueKey().toString(),
      title: "Win rate",
      color: const Color(0xFF5B636B),
      rank: 0,
      img: "assets/icons/rectangle/chart-pie.svg",
    ),
    RectangleModel(
      id: UniqueKey().toString(),
      title: "All treding",
      color: const Color(0xFFFF980F),
      rank: 0,
      img: "assets/icons/rectangle/receipt.svg",
    ),
  ];

  get data => [..._data];
}
