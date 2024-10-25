import 'package:flutter/material.dart';
import 'package:water/widgets/navigate_add_merchant_container_item.dart';

class NavigateAddMerchantContainer extends StatelessWidget {
  const NavigateAddMerchantContainer({
    super.key, required this.merchantSecondImage, required this.storeSecondImage
  });

final String merchantSecondImage;
final String storeSecondImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.24,
          height: MediaQuery.of(context).orientation == Orientation.portrait
              ? MediaQuery.of(context).size.height * 0.212
              : MediaQuery.of(context).size.height * 0.33,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'اضافة عميل جديد',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const Text(
                  'ادخل معلومات العميل',
                  style: TextStyle(
                      color: Color(0xff25292E),
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.014,
                ),
                 NavigateAddMerchantContainerItem(
                  firstImage: 'assets/images/Vvvectorss.png',
                  name: 'التاجر',
                  secondImage: merchantSecondImage,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.011,
                ),
                 NavigateAddMerchantContainerItem(
                  firstImage: 'assets/images/Shop.png',
                  name: 'المتجر',
                  secondImage: storeSecondImage,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.011,
                ),
                const NavigateAddMerchantContainerItem(
                  firstImage: 'assets/images/markk.png',
                  name: 'العنوان',
                  secondImage: 'assets/images/IconIndicator.png',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
