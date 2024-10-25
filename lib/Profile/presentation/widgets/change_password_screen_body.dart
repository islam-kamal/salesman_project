import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/Base/Helper/app_state.dart';
import 'package:water/Base/common/dialogs.dart';
import 'package:water/Base/common/shared.dart';
import 'package:water/Base/common/shared_preference_manger.dart';
import 'package:water/Profile/domain/entities/resetPassword_entity.dart';
import 'package:water/Profile/presentation/bloc/profile_bloc.dart';
import 'package:water/widgets/change_password_text_field.dart';

class ChangePasswordScreenBody extends StatelessWidget {
  ChangePasswordScreenBody({super.key});

  final TextEditingController _currentPasswordController =
  TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: BlocListener(
        bloc: profileBloc,
        listener: (context, state) {
      if(state is Loading){
        QuickAlert.show(
          context: context,
          type: QuickAlertType.loading,
        );
      }
      else if(state is RestPasswordDone){
        print("Done");
        Shared.dismissDialog(context: context);
     /*   QuickAlert.show(
          context: context,
          type: QuickAlertType.success,
          title: "تهانينا ...",
          text: state.model!.result!.message,
        );*/
        Dialogs.showDialogChangePassword(context);
      }
      else if(state is RestPasswordErrorLoading){
        print("ErrorLoading");
        print("state.message : ${state.message}");

        Shared.dismissDialog(context: context);
        QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          title: "خطا ...",
          text: state.message,
        );
      }
    },
    child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          }, icon: const Icon(Icons.arrow_back)),
                      const Text(
                        'تغيير كلمة السر',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
               /*     const ChangePasswordTextField(
                      nameTextField: 'كلمة السر الحالية',
                      hintTextField: 'ادخل كلمة السر الحالية',
                    ),
                    const ChangePasswordTextField(
                      nameTextField: 'كلمة السر الجديدة',
                      hintTextField: 'ادخل كلمة السر الجديدة',
                    ),
                    const ChangePasswordTextField(
                      nameTextField: 'تأكيد كلمة السر',
                      hintTextField: 'ادخل كلمة السر الجديدة مرة اخرى',
                    ),*/
                    ChangePasswordTextField(
                      nameTextField: 'Current Password',
                      hintTextField: 'Enter current password',
                      controller: _currentPasswordController,
                    ),
                    ChangePasswordTextField(
                      nameTextField: 'New Password',
                      hintTextField: 'Enter new password',
                      controller: _newPasswordController,
                    ),
                    ChangePasswordTextField(
                      nameTextField: 'Confirm Password',
                      hintTextField: 'Re-enter new password',
                      controller: _confirmPasswordController,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                       onTap: () async {
                         if (_newPasswordController.text != _confirmPasswordController.text) {
                           Flushbar(
                             message:  "new password and confirm password should be same",
                             duration:  Duration(seconds: 3),
                           )..show(context);
                         } else {
                           profileBloc.add(ResetPasswordClickEvent(
                               resetPasswordEntity:  ResetPasswordEntity(
                                   login: await sharedPreferenceManager.readString(CachingKey.EMAIL),
                                   newPassword: _newPasswordController.text,
                                   oldPassword: _currentPasswordController.text
                               )
                           ));
                         }

                       },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.33,
                            height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.height * 0.038
                            : MediaQuery.of(context).size.height * 0.065,
                            decoration: BoxDecoration(
                            color: Color(0xff1D7AFC),
                            borderRadius: BorderRadius.circular(6)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/CheckCircle.png',
                                        color: Colors.white
                                        ),
                                        SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.006,
                                      ),
                                      const Opacity(
                                        opacity: 0.7,
                                        child: Text(
                                          'حفظ التعديلات',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                        ),
                  ),
                      ],
                    ),
                  ],
    )   ),
              ),
    );
  }
}
