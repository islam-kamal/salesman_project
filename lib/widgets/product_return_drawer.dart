import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:water/widgets/water_item_product_return_drawer.dart';

class ProductReturnDrawer extends StatefulWidget{
  const ProductReturnDrawer({super.key});

  @override
  State<ProductReturnDrawer> createState() => _ProductReturnDrawerState();
}

class _ProductReturnDrawerState extends State<ProductReturnDrawer> {

int _value = 0;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
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
                        'ارتجاع المنتج',
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
                  const WaterItemProductReturnDrawer(),
                  const Text(
                    'العدد المرتجع',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 14 , left: 14 , top: 4),
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
                            child: Center(
                              child: Text('1'),
                            ),
                          ),
                          SizedBox(
                          width: MediaQuery.of(context).size.width * 0.013,
                        ),
                          InkWell(
                            onTap: (){},
                            child: const ImageIcon(
                              color: Colors.blue,
                              AssetImage('assets/images/AddCircle.png')
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      const Text(
                        'نوع المرتجع',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                              Radio(
                                value: 1,
                               groupValue: _value,
                                onChanged: (value){
                                  setState(() {
                                    _value = value!;
                                  });
                                }
                                ),
                                const Text(
                                  'مرتجع جيد',
                                  style: TextStyle(
                                    color: Color(0xff758195),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              Radio(
                                value: 2,
                               groupValue: _value,
                                onChanged: (value){
                                  setState(() {
                                    _value = value!;
                                  });
                                }
                                ),
                                const Text(
                                  'مرتجع سىء',
                                  style: TextStyle(
                                    color: Color(0xff758195),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                        ],
                      ),
                      InkWell(
                        onTap: (){},
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(8),
                          color: Color.fromARGB(255, 228, 224, 224),
                          dashPattern: [10, 14],
                          strokeWidth: 2,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.045,
                            decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'اضف صورة',
                                style: TextStyle(
                                  color: Color(0xff1D7AFC),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                          width: MediaQuery.of(context).size.width * 0.005,
                        ),
                              const Icon(
                                Icons.add_circle_outline,
                                color: Color(0xff1D7AFC),
                                ),
                              ],
                          ),
                          ),
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
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            Text(
                              '42 ر.س',
                              style: TextStyle(
                                 color: Color(0xff07326A),
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.28,
                              height: MediaQuery.of(context).size.height * 0.039,
                              decoration: BoxDecoration(
                              color: const Color(0xff1D7AFC),
                                borderRadius: BorderRadius.circular(5)
                              ),
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
                                      opacity: 0.8,
                                      child: Text(
                                        'اضافة لفاتورة الارتجاع',
                                        style: TextStyle(
                                          color: Colors.white,
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
    );
  }
}