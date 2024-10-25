import 'package:flutter/material.dart';

class FirstContainerInFinancialCollection extends StatelessWidget{
  final String amount_due;
  const FirstContainerInFinancialCollection({super.key,required this.amount_due});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).orientation == Orientation.portrait ?
             MediaQuery.of(context).size.height * 0.046
             : MediaQuery.of(context).size.height * 0.076,
            decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffE34935),
            width: 1,
            ),
            borderRadius: BorderRadius.circular(8)
          ),
          child:  Center(
          child: Text(
            ' مستحق  ${amount_due}  ر.س ',
            style: TextStyle(
              color: Color(0xffAF2A1A),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
                            ),
          ),
        ),
      ],
    );
  }
}