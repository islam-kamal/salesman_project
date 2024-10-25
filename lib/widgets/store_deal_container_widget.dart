import 'package:flutter/material.dart';
import 'package:water/widgets/container_in_store_deal_container.dart';

class StoreDealContainer extends StatelessWidget {
  const StoreDealContainer({super.key});

  @override
  Widget build(BuildContext context) {
      return Column(
        children: [
          MediaQuery.of(context).orientation == Orientation.portrait ?
          Container(
            width: MediaQuery.of(context).size.width * 0.24,
            height: MediaQuery.of(context).size.height * 0.32,
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
                    'بدا المعاملة مع',
                    style: TextStyle(
                        color: Color(0xff25292E),
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  const Opacity(
                    opacity: 0.7,
                    child: Text(
                      'اسم التاجر',
                      style: TextStyle(
                          color: Color(0xff25292E),
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const ContainerInStoreDealContainer(
                    name: 'بيع', image: 'assets/images/IconWrapperrrrr.png', color: Colors.white,
                    ),
                    SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                  const ContainerInStoreDealContainer(
                    name: 'مرتجع جيد', image: 'assets/images/RestartCircle.png', color: Colors.white,
                    ),
                    SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                  const ContainerInStoreDealContainer(
                    name: 'مرتجع سيء', image: 'assets/images/badReturned.png', color: Colors.white,
                    ),
                    SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                  const ContainerInStoreDealContainer(
                    name: 'تحصيل', image: 'assets/images/MoneyBag.png', color: Colors.white,
                    ),
                    SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                  const ContainerInStoreDealContainer(
                    name: 'صور', image: 'assets/images/camera.png', color:Colors.white ,
                    ),
                ],
              ),
            ),
          )
          : Container(
            width: MediaQuery.of(context).size.width * 0.24,
            height: MediaQuery.of(context).size.height * 0.46,
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
                    'بدا المعاملة مع',
                    style: TextStyle(
                        color: Color(0xff25292E),
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  const Opacity(
                    opacity: 0.7,
                    child: Text(
                      'اسم التاجر',
                      style: TextStyle(
                          color: Color(0xff25292E),
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const ContainerInStoreDealContainer(
                    name: 'بيع', image: 'assets/images/IconWrapperrrrr.png', color: Colors.white,
                    ),
                    SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                  const ContainerInStoreDealContainer(
                    name: 'مرتجع جيد', image: 'assets/images/RestartCircle.png', color: Colors.white,
                    ),
                    SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                  const ContainerInStoreDealContainer(
                    name: 'مرتجع سيء', image: 'assets/images/badReturned.png', color: Colors.white,
                    ),
                    SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                  const ContainerInStoreDealContainer(
                    name: 'تحصيل', image: 'assets/images/MoneyBag.png', color: Colors.white,
                    ),
                    SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                  const ContainerInStoreDealContainer(
                    name: 'صور', image: 'assets/images/camera.png', color:Colors.white ,
                    ),
                ],
              ),
            ),
          )
        ],
      );
  }
}
