import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water/widgets/water_item_invoices_details_drawer.dart';

class DrawerAvailableProductsScreen extends StatelessWidget {
  const DrawerAvailableProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
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
                    'ارتجاع المنتج',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.018,
              ),
              const WaterItemInvoicesDetailsDrawer(),
              const Text(
                'الكمية المباعة',
                style: TextStyle(
                    color: Color(0xff25292E),
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
              const Text(
                '24 قطعة',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.013,
              ),
              const Text(
                'العدد المرتجع',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.006,
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
                      width: MediaQuery.of(context).size.width * 0.013,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ImageIcon(
                          color: Colors.blue,
                          AssetImage('assets/images/AddCircle.png')),
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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/Banknote2.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.006,
                          ),
                          const Text(
                            'اجمالي 3,000 ر.س',
                            style: TextStyle(
                                color: Color(0xff07326A),
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/marketImage.png',
                            color: Colors.black,
                            height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.011
                          : MediaQuery.of(context).size.height * 0.018,
                            ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.006,
                          ),
                           const Text(
                        'متبقى 20 قطعة',
                        style: TextStyle(
                            color: Color(0xff07326A),
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.22,
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
                          const Opacity(
                            opacity: 0.7,
                            child: Text(
                              'اضافة للفاتورة',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
