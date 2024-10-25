import 'package:flutter/material.dart';
import 'package:water/index.dart';

class ProductsAndPricesInventoryAddRequestScreen extends StatelessWidget {
  const ProductsAndPricesInventoryAddRequestScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8
            ),
            width: MediaQuery.of(context).size.width * 0.245,
            height: MediaQuery.of(context).orientation == Orientation.portrait ?
               MediaQuery.of(context).size.height * 0.075
               : MediaQuery.of(context).size.height * 0.316,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/asssa.png',
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    const Text(
                    'الرصيد المتبقى',
                    style: TextStyle(
                      color: Color(0xff0056C9),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const Text(
                    '25,000 ر.س',
                    style: TextStyle(
                      color: Color(0xff0056C9),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ],
                ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.016,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.245,
            height: MediaQuery.of(context).orientation == Orientation.portrait ?
               MediaQuery.of(context).size.height * 0.134
               : MediaQuery.of(context).size.height * 0.316,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'طلب تحويل',
                    style: TextStyle(
                      color: Color(0xff25292E),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.008,
                  ),
                   const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.78,
                        child: Text(
                          'المنتج',
                          style: TextStyle(
                            color: Color(0xff758195),
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Text(
                        'المبلغ',
                        style: TextStyle(
                          color: Color(0xff758195),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 186, 180, 180),
                    thickness: 0.9,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          'الاجمالي',
                          style: TextStyle(
                              color: Color(0xff0056C9),
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Opacity(
                        opacity: 0.9,
                        child: Text(
                          '0 ر.س',
                          style: TextStyle(
                              color: Color(0xff0056C9),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.012,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const InventoryAddRequestConfirmScreen()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.23,
                        height: MediaQuery.of(context).orientation == Orientation.portrait ?
                                 MediaQuery.of(context).size.height * 0.041
                                 : MediaQuery.of(context).size.height * 0.074,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.blue,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/CheckCircle.png',
                                  color: Colors.blue),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.006,
                              ),
                              const Text(
                                'مراجعة المنتجات',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
