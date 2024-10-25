import 'package:flutter/material.dart';
import 'package:water/widgets/visit_details_container_item.dart';

class VisitDetailsContainer extends StatelessWidget{
  const VisitDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.24,
          height: MediaQuery.of(context).orientation == Orientation.portrait ?
          MediaQuery.of(context).size.height * 0.259
          : MediaQuery.of(context).size.height * 0.395,
          decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8)
          ),
          child:  Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'أهلاً محمود',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700
                ),
                ),
                SizedBox(
          height: MediaQuery.of(context).size.height * 0.016,
        ),
                const VisitDetailsContainerItem(
                  name: 'نظرة عامة',
                   image: 'assets/images/overView.png',
                   ),
                SizedBox(
          height: MediaQuery.of(context).size.height * 0.011,
        ),
               const VisitDetailsContainerItem(
                name: 'المبيعات',
                 image: 'assets/images/Shop.png',
                 ),
                SizedBox(
          height: MediaQuery.of(context).size.height * 0.011,
        ),
               const VisitDetailsContainerItem(
                name: 'المرتجعات',
                 image: 'assets/images/RestartCircle.png',
                 ),
                SizedBox(
          height: MediaQuery.of(context).size.height * 0.011,
        ),
               const VisitDetailsContainerItem(
                name: 'تحصيل',
                 image: 'assets/images/moneyBaggg.png',
                 ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                      ],
                     ),
                   ),
                  ),
      ],
    );
}
}