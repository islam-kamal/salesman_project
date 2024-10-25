import 'package:flutter/material.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/shared_preference_manger.dart';
import 'package:water/Clients/presentation/pages/client_details_screen.dart';
import 'package:water/Visits/data/models/today_visits_model.dart';
import 'package:water/Visits/presentation/pages/Today/visits_today_screen_details.dart';

class RegisteredCustomersScreenContainerItem extends StatelessWidget {
  const RegisteredCustomersScreenContainerItem(
      {super.key,
         this.visit,
      required this.storeName,
      required this.sales,
      required this.distance,
      required this.money,
       this.type = "visit"});

  final String storeName;
  final String sales;
  final String distance;
  final String money;
  final String type;
final Visit? visit ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return InkWell(
            onTap: (){
              sharedPreferenceManager.writeData(CachingKey.VISIT_ID,  visit?.visitId.toString());
              customAnimatedPushNavigation(context,
                  type == "visit" ?  VisitsTodayDetailsScreen(
                  )
              : const ClientDetailsScreen() );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              Image.asset('assets/images/VectorShopp.png'),
                              SizedBox(
                                width: constraints.maxWidth * 0.008,
                              ),
                              Flexible(
                                child: Text(
                                  type == "visit" ?   visit!.visitName!
                                  : storeName,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Container(
                            width: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                              ? MediaQuery.of(context).size.width * 0.111
                            : MediaQuery.of(context).size.width * 0.072,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 247, 245, 245),
                              border: Border.all(
                                color: Colors.grey,
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/Vectormnmn.png'),
                                  SizedBox(
                                    width: constraints.maxWidth * 0.008,
                                  ),
                                  Flexible(
                                    child: Text(
                                      distance,
                                      style: const TextStyle(
                                        color: Color(0xff0056C9),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Image.asset('assets/images/VectorStrokeCash.png'),
                          SizedBox(
                            width: constraints.maxWidth * 0.008,
                          ),
                          Text(
                            "${type == "visit" ?  visit!.totalAmountDue!.toString()
                                : money} مديونية ",
                            style: const TextStyle(
                              color: Color(0xFFAC6521),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Image.asset('assets/images/VectorStrokeTruee.png'),
                          SizedBox(
                            width: constraints.maxWidth * 0.008,
                          ),
                          Text(
                           "${ type == "visit" ?  visit!.monthOrders!.toString()
                               : sales }  مبيعات شهرية ",
                            style: const TextStyle(
                              color: Color(0xff1D6E4F),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
