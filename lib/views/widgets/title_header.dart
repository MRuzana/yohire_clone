import 'package:flutter/material.dart';
import 'package:yohire/utils/constants/colors.dart';
import 'package:yohire/utils/constants/width_height.dart';
import 'package:yohire/views/styles/text_style.dart';

Widget buildHeader(String title, String action) {
  return Padding(
    padding: padding20,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: customTextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        Text(action,
            style: customTextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: kDarkBlue)), // Make this a clickable link
      ],
    ),
  );
}
