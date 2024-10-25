import 'package:flutter/material.dart';
import 'package:water/App/presentation/bloc/app_bloc.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/widgets/water_item_available_products.dart';

class DrawerInventoryCurrentRequestsAddProduct extends StatefulWidget{
  final String? type;
  DrawerInventoryCurrentRequestsAddProduct({this.type });

  @override
  State<DrawerInventoryCurrentRequestsAddProduct> createState() => _DrawerInventoryCurrentRequestsAddProductState();
}

class _DrawerInventoryCurrentRequestsAddProductState extends State<DrawerInventoryCurrentRequestsAddProduct> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Directionality(
        textDirection: TextDirection.rtl,
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
                      'اضافة المنتج',
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
                Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.033,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1.5),
                      child: TextField(
                        cursorColor: Color.fromARGB(255, 66, 64, 64),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            prefixIcon: Image.asset(
                              'assets/images/search.png',
                              color: Colors.black,
                            ),

                            hintText: 'البحث عن منتج',
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 165, 171, 182),
                            )
                        ),
                      ),
                    )
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.018,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context , index){
                      return  InkWell(
                          onTap: (){
                            if(widget.type != "transfer_request"){
                              appBloc.add(AppDrawrEvent(drawerType: 'transferRequest'));
                  //            scaffoldKey!.currentState!.openEndDrawer();
                            }

                          },
                          child: WaterItemAvailableProducts());
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}