import 'package:flutter/material.dart';

class ImageNumberProductPriceContainerInventoryScreen extends StatelessWidget{
  const ImageNumberProductPriceContainerInventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.033,
          decoration: const BoxDecoration(
          color: Color(0xffDCDFE3),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(9),
              topRight: Radius.circular(9),
            )
          ),
          child: const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'الصورة',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  ),
                  Expanded(
                  flex: 1,
                  child: Text(
                    'العدد',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  ),
                  Expanded(
                  flex: 6,
                  child: Text(
                    'المنتج',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  ),
                  Expanded(
                  flex: 1,
                  child: Text(
                    'السعر',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}