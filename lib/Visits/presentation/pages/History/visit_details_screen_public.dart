import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/widgets/visit_details_screen_public_body.dart';

class VisitDetailsScreenPublic extends StatelessWidget{
  const VisitDetailsScreenPublic({super.key});

  @override
  Widget build(BuildContext context) {
   return AppScreen(
      child: VisitDetailsScreenPublicBody(),
     visitDetails: true,
    );
  }
}