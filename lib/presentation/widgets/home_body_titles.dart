import 'package:flutter/material.dart';

import '../../models/rectangle_data.dart';
import '../../models/title_data.dart';
import 'home_list_tile.dart';

class HomeBodyTitles extends StatelessWidget {
  HomeBodyTitles({super.key});

  final List<RectangleModel> learningData = TitleData().learningData;
  final List<RectangleModel> tradingData = TitleData().tradingData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        const Text(
          "Learning",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Column(
          children: List.generate(
            learningData.length,
            (i) => HomeListTile(
              data: learningData[i],
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "Trading",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Column(
          children: List.generate(
            learningData.length,
            (i) => HomeListTile(
              data: tradingData[i],
            ),
          ),
        ),
      ],
    );
  }
}
