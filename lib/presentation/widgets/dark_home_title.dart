import 'package:flutter/material.dart';

class DarkHomeTitle extends StatelessWidget {
  const DarkHomeTitle({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: const TextStyle(fontSize: 16, color: Color(0xFFC8C8C8)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 3,
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(130, 130, 130, 0.15),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              text2,
              style: const TextStyle(fontSize: 12, color: Color(0xFF828282)),
            ),
          )
        ],
      ),
    );
  }
}
