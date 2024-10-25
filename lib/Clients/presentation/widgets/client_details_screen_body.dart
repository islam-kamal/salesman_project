import 'package:flutter/material.dart';
import 'package:water/widgets/google_map_container.dart';
import 'package:water/widgets/indebtedness_container.dart';
import 'package:water/widgets/market_information_container.dart';
import 'package:water/widgets/trader_file_container.dart';
import 'package:water/widgets/transaction_details_container.dart';

class ClientDetailsScreenBody extends StatelessWidget {
  const ClientDetailsScreenBody({super.key});

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
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back)),
                    const Text(
                      'تفاصيل التاجر',
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
                const TraderFileContainer(
                  traderName: 'عبدالرحمن محمد علي',
                  phone: '+966 4644 4646',
                  textSmallContainer: 'في زيارات اليوم',
                  iconSmallContainer:  'assets/images/VerifiedCheck.png',
                  color: Color(0xff0056C9),
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
                const IndebtednessContainer(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.014,
                ),
                 GoogleMapContainer(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.014,
                ),
                 MarketInformationContainer(),
              ],
            ),
          ),
        ),
    );
  }
}
