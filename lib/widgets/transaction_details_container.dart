import 'dart:ffi';

import 'package:flutter/material.dart';

class TransactionDetailsContainer extends StatelessWidget{
  const TransactionDetailsContainer({
    super.key,
     required this.image,
      required this.color,
       required this.name,
        required this.price,
    this.hasBorder = true
        });

final String image;
final String name;
final String price;
final Color color;
final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.075
              : MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        border: hasBorder ? Border.all(
              color: Colors.grey,
              width: 0.5,
              ) : Border(),
              borderRadius: BorderRadius.circular(8),
      ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.021
              : MediaQuery.of(context).size.height * 0.03,
                color: color,
                ),
                SizedBox(
                  height:MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.003
              : MediaQuery.of(context).size.height * 0.008,
                ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: color,
                ),
              ),
              SizedBox(
                  height:MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.003
              : MediaQuery.of(context).size.height * 0.008,
                ),
              Text(
                price,
                style: TextStyle(
                  fontSize: 14,
                  
                  fontWeight: FontWeight.w500,
                  color: color,

                ),
                maxLines: 2,
              ),
            ],
          ),
        ),
    );
  }
}