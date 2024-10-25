import 'package:flutter/material.dart';
import 'package:water/widgets/navigate_basic_container_item.dart';

// ignore: must_be_immutable
class NavigateBasicContainer extends StatelessWidget {
   NavigateBasicContainer({super.key, this.userType = "B2C"});

String userType ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.24,
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.35
              : MediaQuery.of(context).size.height * 0.546,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'أهلاً محمود',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.014,
                ),
                const NavigateBasicContainerItem(
                  name: 'الرئيسية',
                  image: 'assets/images/VectorHome.png',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.011,
                ),
                const NavigateBasicContainerItem(
                  name: 'الزيارات',
                  image: 'assets/images/VectorVisits.png',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.011,
                ),
             userType == 'B2C' ?   const NavigateBasicContainerItem(
                  name: 'مرتجعات',
                  image: 'assets/images/overView.png',
                )
                : const NavigateBasicContainerItem(
                  name: 'اوامر الشغل',
                  image: 'assets/images/IconWrapperrrrr.png',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.011,
                ),
                const NavigateBasicContainerItem(
                  name: 'العملاء',
                  image: 'assets/images/VectorClints.png',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.011,
                ),
                const NavigateBasicContainerItem(
                  name: 'المخزن',
                  image: 'assets/images/VectorBuild.png',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.011,
                ),
                const NavigateBasicContainerItem(
                  name: 'الحساب',
                  image: 'assets/images/Vvvectorss.png',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
