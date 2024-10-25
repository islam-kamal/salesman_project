import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/widgets/order_details_sale_screen_body.dart';

class OrderDetailsSaleScreen extends StatelessWidget{
  const OrderDetailsSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: OrderDetailsSaleScreenBody(),
      screenButtons: [],
    );
  }
}