import 'package:flutter/material.dart';

class RadioButtonForProduct extends StatefulWidget {
  const RadioButtonForProduct({super.key});

  @override
  State<RadioButtonForProduct> createState() => _RadioButtonForProductState();
}

class _RadioButtonForProductState extends State<RadioButtonForProduct> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'نوع المرتجع',
          style: TextStyle(
              color: Color(0xff25292E),
              fontSize: 16,
              fontWeight: FontWeight.w500
              ),
        ),
        Row(
          children: [
            Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                }),
        const Text(
         'مرتجع سىء',
          style: TextStyle(
              color: Color(0xff758195),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
          ]
          ),
        Row(
          children: [
            Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                }),
        const Text(
          'مرتجع جيد',
          style: TextStyle(
              color: Color(0xff758195),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
          ],
          ),
      ],
    );
  }
}
