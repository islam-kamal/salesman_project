import 'package:flutter/material.dart';

class LoginEmailTextField extends StatelessWidget {
   LoginEmailTextField({super.key});
TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'البريد الاكتروني',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.003,
        ),
        Container(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.01,
            right: MediaQuery.of(context).size.width * 0.01,
          ),
          width: double.infinity,
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.044
              : MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color.fromARGB(255, 215, 212, 212),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/images/emailTextField.png',
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.021
                          : MediaQuery.of(context).size.height * 0.05,
                ),
              ),
              Expanded(
                flex: 20,
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(
                      MediaQuery.of(context).size.width * 0.014,
                    ),
                    border: InputBorder.none,
                    hintText: 'ادخل البريد العمل الاكتروني',
                    hintStyle: const TextStyle(
                      color: Color(0xff758195),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
