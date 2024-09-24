import '../../models/rectangle_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeRectangle extends StatelessWidget {
  const HomeRectangle({
    required this.data,
    super.key,
  });

  final RectangleModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: CircleAvatar(
                  backgroundColor: data.color,
                  child: SvgPicture.asset(
                    data.img,
                    width: 15,
                    height: 15,
                  ),
                ),
              ),
              Text(
                data.rank.toString(),
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Text(data.title, style: const TextStyle(fontSize: 12))
        ],
      ),
    );
  }
}
