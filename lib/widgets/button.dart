import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.color,
      required this.iconImage,
      required this.buttonName,
      required this.textColor});

  final Color color;
  final Color textColor;
  final String iconImage;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.015,
      ),
      width: MediaQuery.of(context).size.width * 0.223,
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.046
          : MediaQuery.of(context).size.height * 0.077,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: const Color(0xff758195),
            width: 0.9,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
          children: [
            ImageIcon(
              color: textColor,
              size: MediaQuery.of(context).orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.height * 0.018
                  : MediaQuery.of(context).size.height * 0.032,
              AssetImage(
                iconImage,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.007,
            ),
            Text(
              buttonName,
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 16, color: textColor),
            ),
          ],
        ),
    );
  }
}
