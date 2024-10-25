import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/WorkOrders/presentation/pages/work_orders_screen_body.dart';

class WorkOrdersScreen extends StatelessWidget{
  const WorkOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: WorkOrdersScreenBody(),
       screenButtons: [],
    );
  }
}