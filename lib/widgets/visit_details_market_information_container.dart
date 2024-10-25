import 'package:flutter/material.dart';
import 'package:water/widgets/files_list_view_item.dart';

class VisitDetailsMarketInformationContainer extends StatelessWidget {
  const VisitDetailsMarketInformationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:  MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? MediaQuery.of(context).size.height * 0.36
                            : MediaQuery.of(context).size.height * 0.48,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      'معلومات المتجر',
                      style: TextStyle(
                        color: Color(0xff25292E),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.008,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Opacity(
                    opacity: 0.2,
                    child: Image.asset(
                      'assets/images/Shop.png',
                      height: MediaQuery.of(context).size.height * 0.035,
                    ),
                  ),
                ),
              ],
            ),
            const Opacity(
              opacity: 0.7,
              child: Text(
                'اسم المتجر',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            const Text(
              'ميسر كو',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.008,
            ),
            const Opacity(
              opacity: 0.7,
              child: Text(
                'الرقم الضريبي',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            const Text(
              '6654654654513221',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.008,
            ),
            const Opacity(
              opacity: 0.7,
              child: Text(
                'رقم السجل',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            const Text(
              '45464654 654654',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.008,
            ),
            const Opacity(
              opacity: 0.7,
              child: Text(
                'الموقع الرسمي',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            const Text(
              'maisarco.com',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.008,
            ),
            const Opacity(
              opacity: 0.7,
              child: Text(
                'المستندات',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: FilesListViewItem(),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
