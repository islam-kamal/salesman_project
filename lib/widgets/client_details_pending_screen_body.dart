import 'package:flutter/material.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/google_map_container.dart';
import 'package:water/widgets/market_information_container.dart';
import 'package:water/widgets/navigate_basic_container.dart';
import 'package:water/widgets/trader_file_container.dart';

class ClientDetailsPendingScreenBody extends StatelessWidget {
  const ClientDetailsPendingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // drawer: const Drawer(),
        body: Padding(
          padding: const EdgeInsets.only(right: 18, left: 18, top: 48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.041
                          : MediaQuery.of(context).size.height * 0.063,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const ImageIcon(AssetImage(
                                  'assets/images/Icon-Wrappppper.png')),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            const Opacity(
                              opacity: 0.8,
                              child: Text(
                                'اخفاء القائمة',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    NavigateBasicContainer(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.24,
                      height: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.114
                          : MediaQuery.of(context).size.height * 0.182,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Button(
                                color: Colors.white,
                                iconImage: 'assets/images/Route.png',
                                buttonName: 'الاتجاهات',
                                textColor: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.011,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Button(
                                color: Colors.white,
                                iconImage: 'assets/images/phonee.png',
                                buttonName: 'الإتصال بالتاجر',
                                textColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back)),
                        const Text(
                          'تفاصيل التاجر',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    const TraderFileContainer(
                      traderName: 'عبدالرحمن محمد علي',
                      phone: '+966 4644 4646',
                      textSmallContainer: 'تحت المراجعة',
                      iconSmallContainer:  'assets/images/VerifiedCheck.png',
                      color: Color(0xffAC6521),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),
                     GoogleMapContainer(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),
                     MarketInformationContainer(container: false),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
