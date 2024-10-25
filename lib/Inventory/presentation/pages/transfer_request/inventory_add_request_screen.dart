import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Inventory/presentation/pages/inventory_screen.dart';
import 'package:water/Inventory/presentation/pages/transfer_request/inventory_add_request_screen_body.dart';

class InventoryAddRequestScreen extends StatelessWidget{
  const InventoryAddRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: InventoryAddRequestScreenBody(),
        screenButtons:[
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
  }
}