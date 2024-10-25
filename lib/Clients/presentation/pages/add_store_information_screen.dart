import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Clients/presentation/pages/clients_screen.dart';
import 'package:water/Clients/presentation/widgets/add_store_information_screen_body.dart';

class AddStoreInformationScreen extends StatelessWidget{
  const AddStoreInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: AddStoreInformationScreenBody(),
      menuType: "clientMenu",
      screenButtons: [
        AppButtonWidget(
          asset: 'assets/images/ChCircle.png',
          text: 'حفظ العميل',
          onClick: () {},
        ),
        AppButtonWidget(
          asset: 'assets/images/cancell.png',
          text: 'الغاء العميل',
          onClick: () {
            customAnimatedPushNavigation(context, ClientsScreen());

          },
          color: kWhiteColor,
        ),
      ],

    );

  }
}