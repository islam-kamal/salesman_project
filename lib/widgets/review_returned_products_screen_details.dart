import 'package:water/App/presentation/widgets/Drawer/good_returns_edit_product_drawer.dart';

import 'package:flutter/material.dart';
import 'package:water/widgets/image_number_product_price_container_review_returned_products.dart';
import 'package:water/widgets/pill_payment_review_returned_products.dart';
import 'package:water/widgets/review_returned_products_water_item.dart';
import 'package:water/widgets/search_text_field_review_returned_products.dart';

class ReviewReturnedProductsScreenDetails extends StatelessWidget {
  ReviewReturnedProductsScreenDetails({super.key});


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: const GoodReturnsEditProductDrawer(),
        body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchTextFieldReviewReturnedProducts(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    const ImageNumberProductPriceContainerReviewReturnedProducts(),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                              // TODO
                              //show drawer
                            },
                            child: const ReviewReturnedProductsWaterItem(),
                          );
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.006,
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.03
                          : MediaQuery.of(context).size.height * 0.05,
                      decoration: const BoxDecoration(
                          color: Color(0xffEBF7FC),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(11),
                              bottomLeft: Radius.circular(11))),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Text(
                                'الاجمالي',
                                style: TextStyle(
                                    color: Color(0xff0056C9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '42 ر.س',
                                style: TextStyle(
                                    color: Color(0xff0056C9),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const PillPaymentReviewReturnedProducts(),
                  ],
                ),
              ),
    );
  }
}
