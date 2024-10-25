import 'package:flutter/material.dart';
import 'package:water/widgets/image_number_product_price_container_Widget.dart';
import 'package:water/widgets/review_product_water_item.dart';
import 'package:water/widgets/search_text_field.dart';

class InventoryScreenBody extends StatelessWidget {
  const InventoryScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'المنتجات المتاحة',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const SearchTextField(
                      hintTextField: 'البحث عن منتج',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),
                    const ImageNumberProductPriceContainer(),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child:  ReviewProductWaterItem(),
                          );
                        }),
                  ],
                ),
              ),
    );
  }
}
