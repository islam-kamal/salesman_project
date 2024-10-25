import 'package:flutter/material.dart';
import 'package:water/widgets/image_number_product_price_container_Widget.dart';
import 'package:water/widgets/returned_details_container.dart';
import 'package:water/widgets/review_product_water_item.dart';
import 'package:water/widgets/search_text_field.dart';

class OrderDetailsReturnScreenBody extends StatelessWidget {
  const OrderDetailsReturnScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return /*Directionality(
      textDirection: LocalizeAndTranslate.getLanguageCode() == 'ar'
          ? TextDirection.rtl
          : TextDirection.ltr,
      child:*/ Scaffold(
        // drawer: const Drawer(),
        body:
              Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: (){
                                Navigator.of(context).pop();
                              },
                              child: Icon(Icons.arrow_back)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          const Text(
                            'تفاصيل امر المرتجع',
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
                      const ReturnedDetailsContainer(
                        iconReturned: 'assets/images/RestartCircle.png',
                        nameReturned: 'امر مرتجع',
                        icon: 'assets/images/trueeStyle.png',
                        traderName: 'عبدالرحمن محمد علي',
                        date: '23 / 5 / 2024',
                        phone: '+966 4644 4646',
                        cost: '30,000 ر.س',
                        time: '5:30 مساءً',
                        number: '50 منتج',
                        textSmallContainer: 'تم الموافقة',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.012,
                      ),
                      const SearchTextField(
                        hintTextField: 'البحث عن منتج',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
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
     //     ),
    );
  }
}
