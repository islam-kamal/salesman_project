import 'package:flutter/material.dart';

class NavigateAddMerchantContainerItem extends StatelessWidget {
  const NavigateAddMerchantContainerItem(
      {super.key,
      required this.name,
      required this.firstImage,
      required this.secondImage,});

  final String name;
  final String firstImage;
  final String secondImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.23,
        height: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height * 0.041
            : MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    firstImage,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.008,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Image.asset(
                secondImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
