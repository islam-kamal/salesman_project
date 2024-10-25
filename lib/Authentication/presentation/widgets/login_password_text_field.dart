import 'package:flutter/material.dart';

class LoginPasswordTextField extends StatefulWidget {
  const LoginPasswordTextField({super.key});

  @override
  State<LoginPasswordTextField> createState() => _LoginPasswordTextFieldState();
}

class _LoginPasswordTextFieldState extends State<LoginPasswordTextField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'كلمة السر',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.003,
        ),
        Container(
          width: double.infinity,
          height:  MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.044
                          : MediaQuery.of(context).size.height * 0.08,
          margin: const EdgeInsets.symmetric(vertical: 8),
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
                  'assets/images/passwordTextField.png',
                  height:  MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.021
                          : MediaQuery.of(context).size.height * 0.05,
                ),
              ),
              Expanded(
                flex: 20,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _isHidden,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.width * 0.018,
                        right: MediaQuery.of(context).size.width * 0.014,
                        left: MediaQuery.of(context).size.width * 0.014),
                    border: InputBorder.none,
                    hintText: 'ادخل كلمة السر الخاصة بك',
                    hintStyle: const TextStyle(
                      color: Color(0xff758195),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.014,
                      ),
                      child: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          _isHidden ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                        ),
                      ),
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

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
