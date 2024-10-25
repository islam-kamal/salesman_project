import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/widgets/visit_details_screen_collected_body.dart';

class VisitDetailsScreenCollected extends StatelessWidget{
  const VisitDetailsScreenCollected({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: VisitDetailsScreenCollectedBody(),
      visitDetails: true,
    );
  }
}