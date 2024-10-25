import 'package:flutter/material.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Visits/presentation/pages/Today/widgets/products_and_prices_previous_invoices_screen.dart';
import 'package:water/index.dart';
import 'package:water/widgets/drawer_previous_invoices_screen.dart';
import 'package:water/widgets/search_text_field_previous_invoices_screen.dart';
import 'package:water/widgets/water_item_previous_invoices.dart';

class PreviousInvoicesScreenDetails extends StatelessWidget {
  PreviousInvoicesScreenDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          endDrawer: const DrawerPreviousInvoicesScreen(),
          body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SearchTextFieldPreviousInvoicesScreen(),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: (){
                                  customAnimatedPushNavigation(context, InvoicesDetailsScreen());
                                },
                                child: const WaterItemPreviousInvoices(
                                                          saleName: 'مبيعات 500 ر.س',
                                                          pill: 'فاتورة رقم 123414',
                                                          date: 'اصدار بتاريخ 21 / 8 / 2024',
                                                          icon: 'assets/images/marketImage.png',
                                                          color: Color(0xff0056C9),
                                                          textIcon: '50 منتج',
                                                        ),
                              );
                            }),
                      ],
                    ),
                ),

                const ProductsAndPricesPreviousInvoicesScreen()
              ],
            ),
          ),
        );
  }
}
