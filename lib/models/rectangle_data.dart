import 'package:flutter/material.dart';

class RectangleModel {
  final String id;
  final String title;
  final Color color;
  final String img;
  final int? rank;
  bool? isActive;

  RectangleModel({
    required this.id,
    required this.title,
    required this.color,
    required this.img,
    this.rank,
    this.isActive,
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

  final List<RectangleModel> _darkData = [
    RectangleModel(
      id: UniqueKey().toString(),
      title: "AI Learning",
      color: const Color.fromRGBO(61, 196, 239, 0.15),
      img: "assets/icons/dark_rectangle/robot.svg",
      isActive: true,
    ),
    RectangleModel(
      id: UniqueKey().toString(),
      title: "Cloud",
      color: const Color.fromRGBO(251, 187, 50, 0.15),
      img: "assets/icons/dark_rectangle/server.svg",
      isActive: true,
    ),
    RectangleModel(
      id: UniqueKey().toString(),
      title: "Martingale",
      color: const Color.fromRGBO(0, 221, 182, 0.15),
      img: "assets/icons/dark_rectangle/coins.svg",
      isActive: false,
    ),
    RectangleModel(
      id: UniqueKey().toString(),
      title: "Copy Trade",
      color: const Color.fromRGBO(235, 113, 255, 0.15),
      img: "assets/icons/dark_rectangle/copy.svg",
      isActive: false,
    ),
  ];



  get data => [..._data];
  get darkData => [..._darkData];
}
