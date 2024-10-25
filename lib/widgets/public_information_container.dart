import 'package:flutter/material.dart';

class PublicInformationContainer extends StatelessWidget {
  const PublicInformationContainer(
      {super.key,
      required this.name,
      required this.phone,
      required this.date,
      required this.time});

  final String name;
  final String phone;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.12
              : MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'معلومات عامة',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.008,
                ),
                Image.asset(
                  'assets/images/overView.png',
                  color: const Color(0xffDCDFE3),
                  height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.032
              : MediaQuery.of(context).size.height * 0.058,
                ),
              ],
            ),
             Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Opacity(
                          opacity: 0.7,
                          child: Text(
                            'اسم التاجر',
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
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Opacity(
                          opacity: 0.7,
                          child: Text(
                            'الرقم الهاتف',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff25292E)),
                          ),
                        ),
                        Text(
                          phone,
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
            ),
             Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Opacity(
                          opacity: 0.7,
                          child: Text(
                            'تاريخ الزيارة',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff25292E)),
                          ),
                        ),
                        Text(
                          date,
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
                            'ميعاد الزيارة',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff25292E)),
                          ),
                        ),
                        Text(
                          time,
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
            ),
          ],
        ),
      ),
    );
  }
}
