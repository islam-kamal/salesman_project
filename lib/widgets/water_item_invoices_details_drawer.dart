import 'package:flutter/material.dart';

class WaterItemInvoicesDetailsDrawer extends StatelessWidget {
  const WaterItemInvoicesDetailsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).orientation == Orientation.portrait ?
          MediaQuery.of(context).size.height * 0.08
          : MediaQuery.of(context).size.height * 0.13,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 247, 245, 245),
                              border: Border.all(
                                color: Colors.grey,
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(4)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/InfoooCircle.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.016,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.002,
                                ),
                                const Text(
                                 'الكاتيجوري',
                                  style: TextStyle(
                                      color: Color(0xff111111),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Image.asset('assets/images/IMG.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.012,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'مياه',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'مياه مدينة شرنك 15 حبة  600 مل',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.017,
                    ),
                    const Text(
                      '42 ر.س',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.012,
        ),
      ],
    );
  }
}
