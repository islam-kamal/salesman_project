import 'package:flutter/material.dart';
import 'package:water/Clients/presentation/widgets/add_merchant_text_field.dart';
import 'package:water/widgets/take_photo_widget.dart';

class AddStoreInformationScreenBody extends StatelessWidget {
  AddStoreInformationScreenBody({super.key});
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
                  ? MediaQuery.of(context).size.height * 0.43
                  : MediaQuery.of(context).size.height * 0.705,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14)),
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AddMerchantTextField(
                        hintTextField: 'ادخل الاسم ثلاثي',
                        nameTextField: 'اسم المتجر',
                        input: TextInputType.name),
                    const AddMerchantTextField(
                        hintTextField: 'ادخل الرقم السعودي',
                        nameTextField: 'الرقم الضريبي',
                        input: TextInputType.phone),
                    const AddMerchantTextField(
                        hintTextField: 'ادخل البريد الكتروني',
                        nameTextField: 'رقم السجل',
                        input: TextInputType.emailAddress),
                    const AddMerchantTextField(
                        hintTextField: 'ادخل البريد الكتروني',
                        nameTextField: 'الموقع الرسمي(ان وجد)',
                        input: TextInputType.emailAddress),
                    const Text(
                      'اضف المستندات',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    TakePhoto(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),
                    const Text(
                      'تأكد من اضافة المستندات الآتية:',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                    Row(
                      children: [
                        const Text(
                          '.',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.005,
                        ),
                        const Text(
                          'السجل الضريبي',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          '.',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.005,
                        ),
                        const Text(
                          'توثيق الشركة',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
