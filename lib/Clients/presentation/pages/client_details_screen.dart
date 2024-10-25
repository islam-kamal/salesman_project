import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/App/presentation/widgets/app_home_button_widget.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Clients/presentation/widgets/client_details_screen_body.dart';

class ClientDetailsScreen extends StatelessWidget{
  const ClientDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
        child: ClientDetailsScreenBody(),
        screenButtons:[
          AppButtonWidget(
            asset: 'assets/images/startVisit.png',
            text: 'بدأ المعاملة',
            onClick: () {},

          ),
          AppButtonWidget(
            asset: 'assets/images/Route.png',
            text: 'الاتجاهات',
            onClick: () {},
            color: kWhiteColor,
          ),
          AppButtonWidget(
            asset: 'assets/images/phonee.png',
            text: 'الإتصال بالتاجر',
            onClick: () {},
            color: kWhiteColor,
          ),
        ]
    );
  }
}