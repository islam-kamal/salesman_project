import 'package:flutter/material.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(
          opacity: 0.5,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.315,
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.085
                : MediaQuery.of(context).size.height * 0.182,
            decoration: BoxDecoration(
                color: const Color(0xffF9F9F9),
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/DefaultMarkerComponent.png'),
                const Text(
                  'لم يتم تحديد الموقع بعد',
                  style: TextStyle(
                    color: Color(0xff758195),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width * 0.315,
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.0425
                        : MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xffDCDFE3),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Map.png',
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.006,
                    ),
                    const Text(
                      'فتح الخريطة',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.315,
                height: MediaQuery.of(context).orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.0425
                          : MediaQuery.of(context).size.height * 0.07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Map.png',
                      color: const Color(0xffAF2A1A),
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.006,
                    ),
                    const Text(
                      'ازالة الموقع',
                      style: TextStyle(
                          color: Color(0xffAF2A1A),
                          fontSize: 14,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
