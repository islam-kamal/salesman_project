import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:water/Base/common/theme.dart';

class ClientMenuContainerItem extends StatelessWidget {
  const ClientMenuContainerItem(
      {super.key, required this.name, required this.image,
        required this.primaryImage,required this.secondaryImage,
        this.onClickStatus});

  final String name;
  final String image;
  final String primaryImage;

  final String secondaryImage;

  final bool? onClickStatus;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: onClickStatus! ? kBlueColor : Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Image.asset(
                  image,
                  color: onClickStatus! ? kWhiteColor : kBlackColor,
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                  Text(
                      name,
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                          color: onClickStatus! ? kWhiteColor : kBlackColor),
                      maxLines: 2,
                    )

              ],
            ),
            Image.asset(
              onClickStatus! ? primaryImage : secondaryImage,
              scale: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}