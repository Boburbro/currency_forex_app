import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/rectangle_data.dart';
import '../theme.dart';

class DarkHomeRectangle extends StatefulWidget {
  const DarkHomeRectangle({
    this.data,
    this.data2,
    this.style2 = false,
    super.key,
  });

  final RectangleModel? data;
  final RectangleModel? data2;
  final bool style2;

  @override
  State<DarkHomeRectangle> createState() => _DarkHomeRectangleState();
}

class _DarkHomeRectangleState extends State<DarkHomeRectangle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 10, left: 10),
      decoration: BoxDecoration(
        color: MyColors.darkRectangleColor,
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
                  backgroundColor: widget.data!.color,
                  child: SvgPicture.asset(
                    widget.data!.img,
                    width: 15,
                    height: 15,
                  ),
                ),
              ),
              widget.style2
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.power_settings_new_rounded),
                    )
                  : Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                        value: widget.data!.isActive!,
                        onChanged: (v) {
                          setState(() {
                            widget.data!.isActive = v;
                          });
                        },
                        activeColor: CupertinoColors.activeBlue,
                        thumbColor: const Color(0xFF45455B),
                      ),
                    )
            ],
          ),
          Text(widget.data!.title, style: const TextStyle(fontSize: 12))
        ],
      ),
    );
  }
}
