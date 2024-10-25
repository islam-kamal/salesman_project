import 'package:flutter/material.dart';
import 'package:water/Clients/presentation/widgets/add_merchant_text_field.dart';


class AddMerchantInformationScreenBody extends StatelessWidget {
  AddMerchantInformationScreenBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'اضافة معلومات التاجر',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).orientation ==
                  Orientation.portrait
                  ? MediaQuery.of(context).size.height * 0.241
                  : MediaQuery.of(context).size.height * 0.182,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14)),
              child: const Column(
                children: [
                  AddMerchantTextField(
                      hintTextField: 'ادخل الاسم ثلاثي',
                      nameTextField: 'اسم التاجر',
                      input: TextInputType.name),
                  AddMerchantTextField(
                      hintTextField: 'ادخل الرقم السعودي',
                      nameTextField: 'رقم التليفون',
                      input: TextInputType.phone),
                  AddMerchantTextField(
                      hintTextField: 'ادخل البريد الكتروني',
                      nameTextField: 'البريد الالكتروني',
                      input: TextInputType.emailAddress),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
