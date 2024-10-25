/*import 'package:flutter/material.dart';

class ChangePasswordTextField extends StatefulWidget {
  const ChangePasswordTextField(
      {super.key, required this.nameTextField, required this.hintTextField});

  final String nameTextField;
  final String hintTextField;

  @override
  State<ChangePasswordTextField> createState() =>
      _LoginPasswordTextFieldState();
}

class _LoginPasswordTextFieldState extends State<ChangePasswordTextField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.nameTextField,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.039
                : MediaQuery.of(context).size.height * 0.065,
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Color.fromARGB(255, 215, 212, 212),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: Align(
                alignment: Alignment.center,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _isHidden,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintTextField,
                    hintStyle: const TextStyle(
                      color: Color(0xff758195),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    suffix: InkWell(
                      onTap: _togglePasswordView,
                      child: Icon(
                        _isHidden
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}*/


import 'package:flutter/material.dart';

class ChangePasswordTextField extends StatefulWidget {
  const ChangePasswordTextField({
    super.key,
    required this.nameTextField,
    required this.hintTextField,
    required this.controller,
  });

  final String nameTextField;
  final String hintTextField;
  final TextEditingController controller;

  @override
  State<ChangePasswordTextField> createState() =>
      _ChangePasswordTextFieldState();
}

class _ChangePasswordTextFieldState extends State<ChangePasswordTextField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.nameTextField,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.039
                : MediaQuery.of(context).size.height * 0.065,
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color.fromARGB(255, 215, 212, 212),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02),
              child: Align(
                alignment: Alignment.center,
                child: TextField(
                  controller: widget.controller,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _isHidden,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintTextField,
                    hintStyle: const TextStyle(
                      color: Color(0xff758195),
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    suffix: InkWell(
                      onTap: _togglePasswordView,
                      child: Icon(
                        _isHidden
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Password Change')),
        body: const PasswordChangeScreen(),
      ),
    );
  }
}

class PasswordChangeScreen extends StatefulWidget {
  const PasswordChangeScreen({super.key});

  @override
  _PasswordChangeScreenState createState() => _PasswordChangeScreenState();
}

class _PasswordChangeScreenState extends State<PasswordChangeScreen> {
  final TextEditingController _currentPasswordController =
  TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
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
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle password change logic
              print('Current Password: ${_currentPasswordController.text}');
              print('New Password: ${_newPasswordController.text}');
              print('Confirm Password: ${_confirmPasswordController.text}');
            },
            child: const Text('Change Password'),
          ),
        ],
      ),
    );
  }
}
