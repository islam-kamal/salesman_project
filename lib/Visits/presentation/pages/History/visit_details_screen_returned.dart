import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/widgets/visit_details_screen_returned_body.dart';

class VisitDetailsScreenReturned extends StatelessWidget{
  const VisitDetailsScreenReturned({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: VisitDetailsScreenReturnedBody(),
      visitDetails: true,
    );
  }
}