import 'package:flutter/material.dart';
import 'package:water/widgets/water_item_available_products.dart';


class DrawerEditInventoryCurrentRequest extends StatelessWidget{
  const DrawerEditInventoryCurrentRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child:Directionality(
        textDirection: TextDirection.rtl,
        child:  Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18 , vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (){
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
                      'تعديل الطلب',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.018,
                ),
                WaterItemAvailableProducts(),
                const Text(
                  'العدد',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){},
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
                        width: MediaQuery.of(context).size.width * 0.13,
                        height: MediaQuery.of(context).size.height * 0.036,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: const Center(
                          child: Text('1'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.018,
                      ),
                      InkWell(
                        onTap: (){},
                        child: const ImageIcon(
                            color: Colors.blue,
                            AssetImage('assets/images/AddCircle.png')
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.052,
                      ),
                      InkWell(
                        onTap: (){},
                        child: const ImageIcon(
                          color: Colors.red,
                          AssetImage(
                              'assets/images/deleteee.png'
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.007,
                      ),
                      const Text(
                        'ازالة من الفاتورة',
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                                'assets/images/Banknote2.png'
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.005,
                            ),
                            const Text(
                              'اجمالي 3,000 ر.س',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/MoneyBag.png',
                              height: MediaQuery.of(context).size.height * 0.012,
                              color: const Color(0xffAC6521),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.005,
                            ),
                            const Text(
                              'متبقى 200،000 المديونية',
                              style: TextStyle(
                                  color: Color(0xffAC6521),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.24,
                        height: MediaQuery.of(context).size.height * 0.039,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color(0xff1D7AFC),
                                width: 1
                            ),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/CheckCircle.png',
                              color: const Color(0xff1D7AFC),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.006,
                            ),
                            const Opacity(
                              opacity: 0.8,
                              child: Text(
                                  'حفظ التعديلات',
                                  style: TextStyle(
                                      color: Color(0xff1D7AFC),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300
                                  )
                              ),
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
      ),
    );
  }
}