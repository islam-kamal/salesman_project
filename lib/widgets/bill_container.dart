import 'package:flutter/material.dart';
import 'package:water/widgets/custom_dropdown.dart';

class BillContainer extends StatelessWidget{
  const BillContainer({super.key, required this.containerName});

final String containerName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'تصفية حسب',
              style: TextStyle(
                color: Color(0xff758195),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),

            CustomDropdown(
              title: containerName,
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).orientation ==
                  Orientation.portrait
                  ? MediaQuery.of(context).size.height * 0.04
                  : MediaQuery.of(context).size.height * 0.06,
            )
          ],
        )
      ],
    );
  }
}