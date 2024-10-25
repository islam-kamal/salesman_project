import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water/App/presentation/bloc/app_bloc.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/Base/Helper/app_state.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Inventory/presentation/pages/inventory_screen.dart';
import 'package:water/Inventory/presentation/pages/transfer_request/inventory_second_add_request_screen_body.dart';
import 'package:water/Inventory/presentation/widgets/drawer_inventory_current_requests_add_product.dart';

class InventorySecondAddRequestScreen extends StatefulWidget{
  const InventorySecondAddRequestScreen({super.key});

  @override
  State<InventorySecondAddRequestScreen> createState() => _InventorySecondAddRequestScreenState();
}

class _InventorySecondAddRequestScreenState extends State<InventorySecondAddRequestScreen> {
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
            print("state.drawerType  : ${state.drawerType }");
            return AppScreen(
                child: InventorySecondAddRequestScreenBody(),
                drawer: state.drawerType == 'addProduct'?
                DrawerInventoryCurrentRequestsAddProduct(
                  type: "transfer_request",
                )
                    : Drawer(),
                screenButtons:[
                  AppButtonWidget(
                    asset: 'assets/images/addWithoutBorder.png',
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