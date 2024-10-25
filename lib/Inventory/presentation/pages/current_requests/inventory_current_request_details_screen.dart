import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water/App/presentation/bloc/app_bloc.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/Base/Helper/app_state.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Inventory/presentation/pages/current_requests/inventory_current_request_details_screen_body.dart';
import 'package:water/Inventory/presentation/pages/inventory_screen.dart';
import 'package:water/Inventory/presentation/widgets/drawer_edit_inventory_current_request.dart';
import 'package:water/Inventory/presentation/widgets/drawer_inventory_current_request_transfer_request.dart';
import 'package:water/Inventory/presentation/widgets/drawer_inventory_current_requests_add_product.dart';

class InventoryCurrentRequestDetailsScreen extends StatefulWidget{
   const InventoryCurrentRequestDetailsScreen({super.key});

  @override
  State<InventoryCurrentRequestDetailsScreen> createState() => _InventoryCurrentRequestDetailsScreenState();
}

class _InventoryCurrentRequestDetailsScreenState extends State<InventoryCurrentRequestDetailsScreen> {

@override
  void initState() {
  appBloc.add(AppDrawrEvent(drawerType: 'addProduct'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: appBloc,
        builder: (contex,state){
          if(state is AppDrawerDoneState){
                  return AppScreen(
                child: InventoryCurrentRequestDetailsScreenBody(),
                drawer: state.drawerType == 'addProduct'?
                DrawerInventoryCurrentRequestsAddProduct(
                  type: "CurrentRequest",
                )
                    : state.drawerType  == 'editProduct'?
                const DrawerEditInventoryCurrentRequest()
                    : const DrawerCurrentRequestSTransferRequest() ,
                screenButtons:[
                  AppButtonWidget(
                    asset: 'assets/images/VectorAdddd.png',
                    text: 'اضف منتج',
                    onClick: () {
                      appBloc.add(AppDrawrEvent(drawerType: 'addProduct'));
                //    scaffoldKey!.currentState!.openEndDrawer();
                    },
                  ),
                  AppButtonWidget(
                    asset: 'assets/images/cancell.png',
                    text: 'إلغاء الطلب',
                    onClick: () {
                      customAnimatedPushNavigation(context, InventoryScreen());
                    },
                    color: kWhiteColor,
                  ),
                ]
            );
          }else{
            return Container();
          }


    });
  }
}