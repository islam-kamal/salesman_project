import 'package:water/Base/common/navigtor.dart';
import 'package:water/index.dart';
import 'package:water/widgets/products_and_prices_inventory_add_request_screen.dart';
import 'package:water/widgets/search_text_field_available_items_screen.dart';
import 'package:water/widgets/water_item_available_items.dart';
import 'package:flutter/material.dart';

class InventoryAddRequestScreenBody extends StatelessWidget {
  InventoryAddRequestScreenBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SearchTextFieldAvailableItemsScreen(
                        hintText: 'البحث عن منتج',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          // physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: (){
                                  customAnimatedPushNavigation(context, InventorySecondAddRequestScreen());
                                },
                                child:  CategoriesWidget());
                          }),
                    ],
                  ),
                ),
                const ProductsAndPricesInventoryAddRequestScreen()
              ],
            ),
          ),
        );
  }
}
