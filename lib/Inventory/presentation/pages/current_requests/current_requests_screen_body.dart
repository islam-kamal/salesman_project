import 'package:flutter/material.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/current_request_grid_view_item.dart';
import 'package:water/widgets/navigate_basic_container.dart';
import 'package:water/widgets/visit_type_containers.dart';

class CurrentRequestsScreenBody extends StatelessWidget {
  CurrentRequestsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.012,
                      ),
                      const Text(
                        'طلبات التحويل',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: const VisitTypeContainers(
                        textFirstContainer: 'الحالة',
                        textSecondContainer: 'من',
                        textThirdContainer: 'الى',
                      ),
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 2
                            : 3,
                        crossAxisSpacing: 16,
                        childAspectRatio: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 4.15 / 2
                            : 4.25 / 2,
                      ),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return const CurrentRequestGridViewItem(
                        saleName: 'مبيعات 500 ر.س',
                        pill: 'فاتورة رقم 123414',
                        date: 'اصدار بتاريخ 21 / 8 / 2024',
                        icon: 'assets/images/period.png',
                        color: Color(0xff0056C9),
                        textIcon: 'يتم المراجعة', productNumber: '55 منتج',
                      );
                      },
                    ),
                  ],
                ),
              ),
    );
  }
}
