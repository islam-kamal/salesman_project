import 'package:flutter/material.dart';
import 'package:water/App/presentation/widgets/Drawer/good_returns_return_product_drawer.dart';
import 'package:water/Visits/presentation/pages/Today/widgets/products_and_prices_invoices_details_screen.dart';
import 'package:water/widgets/image_number_product_price_container_invoices_details.dart';import 'package:water/widgets/search_text_field_invoices_details_screen.dart';
import 'package:water/widgets/water_item_invoices_details.dart';

class InvoicesDetailsScreenBody extends StatelessWidget{
  InvoicesDetailsScreenBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: Scaffold(
         endDrawer: const GoodReturnsReturnProductDrawer(),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                 Expanded(
                  flex: 3,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const SearchTextFieldInvoicesDetailsScreen(),
                 const ImageNumberProductPriceContainerInvoicesDetails(),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context , index){
                      return const WaterItemInvoicesDetails();
                    }
                    ),
                ],
              ),
                ),
               const ProductsAndPricesInvoicesDetailsScreen()
               ],
          ),
        ),
       );
  }
}


