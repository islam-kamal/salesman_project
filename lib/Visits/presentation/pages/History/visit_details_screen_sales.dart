import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/widgets/visit_details_screen_sales_body.dart';

class VisitDetailsScreenSales extends StatelessWidget{
  const VisitDetailsScreenSales({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: VisitDetailsScreenSalesBody(),
      visitDetails: true,
    );
  }
}