import 'package:flutter/material.dart';
import 'package:water/widgets/water_item_in_drawer.dart';

class InventoryEditProductDrawer extends StatelessWidget {
  const InventoryEditProductDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Directionality(
          textDirection: TextDirection.rtl,
          child:Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const ImageIcon(
                      AssetImage('assets/images/cancell.png'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.012,
                  ),
                  const Text(
                    'تعديل المنتج',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              const WaterItemInDrawer(),
              const Text(
                'العدد',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const ImageIcon(
                        color: Colors.red,
                        AssetImage(
                          'assets/images/minusCircle.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.013,
                    ),
                    Container(
                      width: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.width * 0.13
                          : MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.036
                          : MediaQuery.of(context).size.height * 0.055,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                        child: Text('1'),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.018,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ImageIcon(
                          color: Colors.blue,
                          AssetImage('assets/images/AddCircle.png')),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).orientation ==
                              Orientation.portrait ?
                              MediaQuery.of(context).size.width * 0.052
                              : MediaQuery.of(context).size.width * 0.18,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ImageIcon(
                        color: Colors.red,
                        AssetImage('assets/images/deleteee.png'),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.007,
                    ),
                    const Text(
                      'ازالة من الطلب',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text(
                        'الاجمالي',
                        style: TextStyle(
                            color: Color(0xff07326A),
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        '42 ر.س',
                        style: TextStyle(
                            color: Color(0xff07326A),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.039
                          : MediaQuery.of(context).size.height * 0.064,
                      decoration: BoxDecoration(
                          color: const Color(0xff1D7AFC),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/CheckCircle.png',
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.006,
                          ),
                          const Text('حفظ التعديلات',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
