import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Inventory/presentation/pages/current_requests/current_requests_screen_body.dart';

class CurrentRequestsScreen extends StatelessWidget{
  const CurrentRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: CurrentRequestsScreenBody(),
        screenButtons:[
          AppButtonWidget(
            asset: 'assets/images/VectorAdddd.png',
            text: 'طلب تحويل',
            onClick: () {},
          ),
        ]
    );
  }
}