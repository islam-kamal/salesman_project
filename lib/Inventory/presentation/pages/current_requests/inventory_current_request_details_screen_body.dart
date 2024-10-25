import 'package:flutter/material.dart';
import 'package:water/App/presentation/bloc/app_bloc.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/widgets/image_number_product_price_container_Widget.dart';
import 'package:water/widgets/pill_payment.dart';
import 'package:water/widgets/review_product_water_item.dart';
import 'package:water/widgets/search_text_field.dart';

class InventoryCurrentRequestDetailsScreenBody extends StatefulWidget {
  InventoryCurrentRequestDetailsScreenBody({super.key});

  @override
  State<InventoryCurrentRequestDetailsScreenBody> createState() =>
      _InventoryCurrentRequestDetailsScreenBodyState();
}

class _InventoryCurrentRequestDetailsScreenBodyState
    extends State<InventoryCurrentRequestDetailsScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.008,
                ),
                const Text(
                  'تفاصيل الطلب',
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
                    onTap: () {
                      appBloc.add(AppDrawrEvent(drawerType: 'editProduct'));
              //      scaffoldKey!.currentState!.openEndDrawer();
                    },
                    child:  ReviewProductWaterItem(),
                  );
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.006,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).orientation == Orientation.portrait
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.003,
            ),
            const PillPayment(
              textButton: 'حفظ التعديلات',
              dialogName: 'edit',
            )
          ],
        ),
      ),
    );
  }
}
