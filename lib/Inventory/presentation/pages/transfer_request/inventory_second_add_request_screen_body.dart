import 'package:water/App/presentation/bloc/app_bloc.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/widgets/products_and_prices_inventory_add_request_screen.dart';
import 'package:water/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:water/widgets/water_item_available_products.dart';

class InventorySecondAddRequestScreenBody extends StatelessWidget {
  InventorySecondAddRequestScreenBody({super.key});


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
              Row(
                        children: [
                          InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: const Icon(Icons.arrow_back),
                          ),
                          SizedBox(
                        width: MediaQuery.of(context).size.width * 0.019,
                      ),
                          const Text(
                            'المنتجات المتاحة',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.019,
                      ),
                      SearchTextField(hintTextField: 'البحث عن منتج'),
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
                            appBloc.add(AppDrawrEvent(drawerType: 'addProduct'));
                    //        scaffoldKey!.currentState?.openEndDrawer();
                            },
                            child:  WaterItemAvailableProducts());
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





