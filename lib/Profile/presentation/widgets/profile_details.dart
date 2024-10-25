import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails(
      {super.key,
      required this.gender,
      required this.name,
      required this.cardNumber,
      required this.employerNumber,
      required this.email,
      required this.phone,
      required this.employment,
      required this.employerDate});

  final String gender;
  final String name;
  final String cardNumber;
  final String employerNumber;
  final String email;
  final String phone;
  final String employment;
  final String employerDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.017),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Opacity(
                      opacity: 0.7,
                      child: Text(
                        'الجنس',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff25292E)),
                      ),
                    ),
                    Text(
                      gender,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Opacity(
                      opacity: 0.7,
                      child: Text(
                        'الاسم',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff25292E)),
                      ),
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Opacity(
                      opacity: 0.7,
                      child: Text(
                        'رقم الهوية',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff25292E)),
                      ),
                    ),
                    Text(
                      cardNumber,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Opacity(
                      opacity: 0.7,
                      child: Text(
                        'رقم الموظف',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff25292E)),
                      ),
                    ),
                    Text(
                      employerNumber,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Opacity(
                      opacity: 0.7,
                      child: Text(
                        'البريد الإلكتروني',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff25292E)),
                      ),
                    ),
                    Text(
                      email,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Opacity(
                      opacity: 0.7,
                      child: Text(
                        'رقم الهاتف',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff25292E)),
                      ),
                    ),
                    Text(
                      employerNumber,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Opacity(
                      opacity: 0.7,
                      child: Text(
                        'الوظيفة',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff25292E)),
                      ),
                    ),
                    Text(
                      employment,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Opacity(
                      opacity: 0.7,
                      child: Text(
                        'موظف منذ',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff25292E)),
                      ),
                    ),
                    Text(
                      employerDate,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
