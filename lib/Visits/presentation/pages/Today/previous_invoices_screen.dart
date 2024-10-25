import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Visits/presentation/pages/Today/widgets/previous_invoices_screen_details.dart';
import 'package:water/Base/common/dialogs.dart';

class PreviousInvoicesScreen extends StatelessWidget{
  const PreviousInvoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: PreviousInvoicesScreenDetails(),
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