import 'package:flutter/material.dart';
import 'package:water/index.dart';
import 'package:water/widgets/search_text_field.dart';
import 'package:water/widgets/visit_type_containers.dart';
import 'package:water/widgets/visits_history_screen_container_item.dart';

class WorkOrdersScreenBody extends StatelessWidget {
  WorkOrdersScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        endDrawer: const Drawer(),
        body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.012,
                      ),
                      const Text(
                        'اوامر الشغل',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    const SearchTextField(hintTextField: 'البحث عن فاتورة'),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    const VisitTypeContainers(
                      textFirstContainer: 'الفترة',
                      textSecondContainer: 'الحالة',
                      textThirdContainer: 'نوع الأمر',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 2
                            : 3,
                        crossAxisSpacing: 16,
                        childAspectRatio: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 4.3 / 2
                            : 4.9 / 2,
                      ),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                index % 2 == 0 ?    const OrderDetailsSaleScreen()
                            : const OrderDetailsReturnScreen()));
                          },
                          child:  VisitsHistoryScreenContainerItem(
                            date: index % 2 == 0 ?  'امر بيع 2313' : 'امر مرتجع 2313',
                            collect: '50 منتج',
                            complete: '30,000 ر.س',
                            visit: 'تم الموافقة',
                            returned: '3 ساعات',
                            store: 'اسم المتجر',
                            icon: 'assets/images/trueeStyle.png',
                            iconColor: Color(0xff1D6E4F),
                            iconProductType: 'assets/images/trueInSquare.png',
                            iconStoreName: 'assets/images/smallShop.png',
                            iconCompleted: 'assets/images/Banknote2.png',
                            iconReturned: 'assets/images/timeHistory.png',
                            iconCollected: 'assets/images/marketImage.png',
                            collectedColor: Colors.black,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
    );
  }
}
