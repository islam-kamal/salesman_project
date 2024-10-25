import 'package:flutter/material.dart';
import 'package:water/App/presentation/pages/app_screen.dart';
import 'package:water/Profile/presentation/widgets/change_password_screen_body.dart';

class ChangePasswordScreen extends StatelessWidget{
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      child: ChangePasswordScreenBody(),
      screenButtons: [

      ],
    );
  }
}