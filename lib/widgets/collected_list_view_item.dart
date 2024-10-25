import 'package:flutter/material.dart';

class CollectedListViewItem extends StatelessWidget{
  const CollectedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.22,
      height: MediaQuery.of(context).size.height * 0.16,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              'assets/images/Rectanglee.png',
              fit: BoxFit.cover,
            ),
    );
  }
}