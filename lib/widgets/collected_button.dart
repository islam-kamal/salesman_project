import 'package:flutter/material.dart';

class CollectedButton extends StatelessWidget {
  const CollectedButton(
      {super.key,
      required this.color,
      required this.description,
      required this.borderColor});

  final Color color;
  final Color borderColor;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.32,
      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.042
                          : MediaQuery.of(context).size.height * 0.065,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: borderColor,
          width: 0.9,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          description,
          style: TextStyle(
              color: color, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
