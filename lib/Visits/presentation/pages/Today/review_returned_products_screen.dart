import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/widgets/review_returned_products_screen_details.dart';
import 'package:water/Base/common/dialogs.dart';

class ReviewReturnedProductsScreen extends StatelessWidget{
  const ReviewReturnedProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: ReviewReturnedProductsScreenDetails(),
      screenButtons: [
        AppButtonWidget(
          asset: 'assets/images/ChCircle.png',
          text: 'انهاء الزيارة',
          onClick: () => Dialogs.showDialogFinishVisit(context),
        ),
      ],
     menuType:  "subMenu",
    );
  }
}