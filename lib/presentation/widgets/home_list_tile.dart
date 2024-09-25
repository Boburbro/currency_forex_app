import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/rectangle_data.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({
    required this.data,
    super.key,
  });

  final RectangleModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: data.color,
          child: SvgPicture.asset(data.img),
        ),
        title: Text(
          data.title,
          style: const TextStyle(fontSize: 12),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.power_settings_new_rounded,
            color: Color(0xFF3A444A),
          ),
        ),
      ),
    );
  }
}
