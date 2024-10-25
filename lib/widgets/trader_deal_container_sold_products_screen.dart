import 'package:flutter/material.dart';

class TraderDealContainerSoldProductsScreen extends StatelessWidget{
  const TraderDealContainerSoldProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.23,
          height: MediaQuery.of(context).size.height * 0.22,
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
                'بدا المعاملة مع',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                const Opacity(
                  opacity: 0.7,
                  child: Text(
                  'اسم التاجر',
                  style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
          height: MediaQuery.of(context).size.height * 0.011,
        ),
                InkWell(
                onTap: (){},
                focusColor: const Color.fromARGB(255, 30, 133, 219),
                hoverColor: const Color.fromARGB(255, 30, 133, 219),
                onLongPress: () => Colors.blue,
                child: Container(
                width: MediaQuery.of(context).size.width * 0.23,
                height: MediaQuery.of(context).size.height * 0.041,
                decoration: BoxDecoration(
                color:  Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                  child: Row(
                    children: [
                  Image.asset(
                    'assets/images/IconWrapperrrrr.png',
                    color: Colors.black,
                    ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.008,
                  ),
                  const Text(
                    'امر بيع',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                                        ],
                                        ),
                                    ),
                  ),
                ),
                SizedBox(
          height: MediaQuery.of(context).size.height * 0.011,
        ),
                InkWell(
                  onTap: (){},
                  focusColor: const Color.fromARGB(255, 30, 133, 219),
                    hoverColor: const Color.fromARGB(255, 30, 133, 219),
                    onLongPress: () => Colors.blue,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.23,
                  height: MediaQuery.of(context).size.height * 0.041,
                  decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Row(
                    children: [
                      Image.asset('assets/images/RestartCircle.png'),
                      SizedBox(
                       width: MediaQuery.of(context).size.width * 0.008,
                      ),
                      Text(
                      'مرتجع',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                        ],
                        ),
                      ),
                  ),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
          InkWell(
            onTap: (){},
            focusColor: const Color.fromARGB(255, 30, 133, 219),
              hoverColor: const Color.fromARGB(255, 30, 133, 219),
              onLongPress: () => Colors.blue,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.23,
                              height: MediaQuery.of(context).size.height * 0.041,
                              decoration: BoxDecoration(
                              color:  Colors.white,
                              
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Row(
                                  children: [
                            Image.asset('assets/images/MoneyBag.png'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008,
                            ),
                            Text(
                              'تحصيل',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),
                              ),
                                                  ],
                                                 ),
                                             ),
                            ),
                          ),
                      ],
                     ),
                   ),
                  ),
      ],
    );
  }
}