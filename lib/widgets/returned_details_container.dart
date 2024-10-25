import 'package:flutter/material.dart';

class ReturnedDetailsContainer extends StatelessWidget {
  const ReturnedDetailsContainer(
      {super.key,
      required this.iconReturned,
      required this.nameReturned,
      required this.icon,
      required this.traderName,
      required this.phone,
      required this.date,
      required this.cost,
      required this.time,
      required this.number,
      required this.textSmallContainer});

  final String iconReturned;
  final String nameReturned;
  final String icon;
  final String traderName;
  final String phone;
  final String date;
  final String cost;
  final String time;
  final String number;
  final String textSmallContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.165
          : MediaQuery.of(context).size.height * 0.27,
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
                Row(
                  children: [
                    Image.asset(
                      iconReturned,
                      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.0145
          : MediaQuery.of(context).size.height * 0.024,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        nameReturned,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.075
                          : MediaQuery.of(context).size.height * 0.14,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.019
                          : MediaQuery.of(context).size.height * 0.032,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 244),
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Row(
                          children: [
                            Image.asset(
                              icon,
                              color: const Color(0xff1D6E4F),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.004,
                            ),
                              Text(
                              textSmallContainer,
                              style: const TextStyle(
                                  color: Color(0xff1D6E4F),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.008,
                ),
                Image.asset(
                  'assets/images/overView.png',
                  color: const Color(0xffDCDFE3),
                  height:
                      MediaQuery.of(context).orientation == Orientation.portrait
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
                          traderName,
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
                            'المبلغ',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff25292E)),
                          ),
                        ),
                        Text(
                         cost,
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
                            'العدد',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff25292E)),
                          ),
                        ),
                        Text(
                          number,
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
