import 'rectangle_data.dart';
import 'package:flutter/material.dart';



class TitleData {
  final List<RectangleModel> _learningData = [
    RectangleModel(
      id: UniqueKey().toString(),
      title: "RSI Learning",
      color: const Color.fromRGBO(123, 93, 233, 0.15),
      img: "assets/icons/learning_title/robot1.svg",
    ),
    RectangleModel(
      id: UniqueKey().toString(),
      title: "BBANDS Learning",
      color: const Color.fromRGBO(0, 149, 123, 0.15),
      img: "assets/icons/learning_title/robot2.svg",
    ),
  ];

  final List<RectangleModel> _tradingData = [
    RectangleModel(
      id: UniqueKey().toString(),
      title: "RSI AUTO",
      color: const Color.fromRGBO(255, 152, 15, 0.15),
      img: "assets/icons/trading_title/rocket1.svg",
    ),
    RectangleModel(
      id: UniqueKey().toString(),
      title: "BBANDS AUTO",
      color: const Color.fromRGBO(235, 113, 255, 0.15),
      img: "assets/icons/trading_title/rocket2.svg",
    ),
  ];

  get learningData => [..._learningData];
  get tradingData => [..._tradingData];
}
