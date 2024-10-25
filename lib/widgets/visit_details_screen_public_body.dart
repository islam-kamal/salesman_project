import 'package:flutter/material.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/index.dart';
import 'package:water/widgets/google_map_container.dart';
import 'package:water/widgets/public_information_container.dart';
import 'package:water/widgets/transaction_details_container.dart';
import 'package:water/widgets/value_pill_date_number_container.dart';
import 'package:water/widgets/visit_details_list_view_item.dart';
import 'package:water/widgets/visit_details_market_information_container.dart';

class VisitDetailsScreenPublicBody extends StatelessWidget {
  const VisitDetailsScreenPublicBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // endDrawer: const Drawer(),
        body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                           InkWell(
                               onTap: () {Navigator.of(context).pop();},
                               child: Icon(Icons.arrow_back)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          const Text(
                            'تفاصيل الزيارة',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.008,
                      ),
                      const PublicInformationContainer(
                        name: 'عبدالرحمن محمد علي',
                        phone: '+966 4644 4646',
                        date: '23 / 5 / 2024',
                        time: '5:30 مساءً',
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TransactionDetailsContainer(
                              image: 'assets/images/BillList.png',
                              color: Color(0xff0056C9),
                              name: 'مبيعات',
                              price: '25,000 ر.س',
                            ),
                            TransactionDetailsContainer(
                              image: 'assets/images/Union.png',
                              color: Color(0xFFAC6521),
                              name: 'مرتجعات',
                              price: '25,000 ر.س',
                            ),
                            TransactionDetailsContainer(
                              image: 'assets/images/moneyBaggg.png',
                              color: Color(0xff1D6E4F),
                              name: 'تحصيل',
                              price: '25,000 ر.س',
                            ),
                            TransactionDetailsContainer(
                              image: 'assets/images/DangerTriangle.png',
                              color: Color(0xffAF2A1A),
                              name: 'مديونية',
                              price: '25,000 ر.س',
                            ),
                          ],
                        ),
                      ),
                      const ValuePillDateNumberContainer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.014,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: VisitDetailsListViewItem(
                                number: "33",
                                date: '23/5/2024',
                                pillType: 'مرتجع',
                                productNumber: '50 منتج',
                                productValue: '42 ر.س',
                              ),
                            );
                          }),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.014,
                      ),
                       GoogleMapContainer(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.014,
                      ),
                      const VisitDetailsMarketInformationContainer(),
                    ],
                  ),
                ),
              ),
    );
  }
}
