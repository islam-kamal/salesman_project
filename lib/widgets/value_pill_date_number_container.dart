import 'package:flutter/material.dart';

class ValuePillDateNumberContainer extends StatelessWidget {
  const ValuePillDateNumberContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.033
              : MediaQuery.of(context).size.height * 0.052,
          decoration: const BoxDecoration(
              color: Color(0xffDCDFE3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(9),
                topRight: Radius.circular(9),
              )),
          child: const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'الرقم',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                   'التاريخ',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    'نوع الفاتورة',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                       'القيمة',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
