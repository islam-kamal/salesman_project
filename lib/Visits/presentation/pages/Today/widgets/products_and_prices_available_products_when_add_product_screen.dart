import 'package:flutter/material.dart';
import 'package:water/Visits/presentation/pages/Today/review_product_screen.dart';

class ProductsAndPricesAvailableProductsWhenAddProductScreen extends StatelessWidget {
  const ProductsAndPricesAvailableProductsWhenAddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.245,
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.24
                : MediaQuery.of(context).size.height * 0.37,
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
                    'مرتجع منتجات',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    'لأسم التاجر',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          '  4*مياه',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        '42 ر.س',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          '  2*مياه',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        '42 ر.س',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          '  2*مياه',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        '42 ر.س',
                        style: TextStyle(
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
                          '42 ر.س',
                          style: TextStyle(
                              color: Color(0xff0056C9),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.004,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          'رصيد سابق',
                          style: TextStyle(
                              color: Color(0xff0056C9),
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Opacity(
                        opacity: 0.9,
                        child: Text(
                          '-42 ر.س',
                          style: TextStyle(
                              color: Color(0xff0056C9),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.004,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Text(
                          'الصافي',
                          style: TextStyle(
                              color: Color(0xff0056C9),
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Opacity(
                        opacity: 0.9,
                        child: Text(
                          '42 ر.س',
                          style: TextStyle(
                              color: Color(0xff0056C9),
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.009,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ReviewProductScreen()));
                    },
                    child: Opacity(
                      opacity: 0.6,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.23,
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.height * 0.041
                            : MediaQuery.of(context).size.height * 0.065,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Color(0xff1D7AFC),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/CheckCircle.png',
                                  color: Color(0xff1D7AFC)),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.006,
                              ),
                              const Text(
                                'مراجعة المنتجات',
                                style: TextStyle(
                                  color: Color(0xff1D7AFC),
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
          )
        ],
      ),
    );
  }
}
