import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Clients/data/models/invoice_history_model.dart';

class BarChartSample extends StatelessWidget {
  final String title;
  List<Statistics>? statistics;
  BarChartSample({required this.title,this.statistics});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: kInactiveColor)),
        color: const Color(0xffffffff),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      title ,
                      style: TextStyle(
                        color: const Color(0xff0f4a3c),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {},
                        ),

                         Text(
                           statistics == null ?  'اكتوبر 2023 - مارس 2024'
                          : ' ${statistics!.last.month} 2024   -  ${statistics!.first.month} 2024 ',
                        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: BarChart(
                      statistics != null ? BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                       barGroups: statistics!.map((e){
                         return    BarChartGroupData(
                           x: statistics!.indexOf(e),
                           barRods: [
                             BarChartRodData(
                                 y: double.parse(e.collection.toString()),
                                 colors: [Colors.green],
                                 width:
                                 MediaQuery.of(context).size.width * 0.02,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(5),
                                     topRight: Radius.circular(5))),
                             BarChartRodData(
                                 y: double.parse(e.sales.toString()),
                                 colors: [Colors.blue],
                                 width:
                                 MediaQuery.of(context).size.width * 0.02,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(5),
                                     topRight: Radius.circular(5))),
                             BarChartRodData(
                                 y: double.parse(e.returns.toString()),
                                 colors: [Colors.orange],
                                 width:
                                 MediaQuery.of(context).size.width * 0.02,
                                 borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(5),
                                     topRight: Radius.circular(5))),
                           ],
                         );
                       }).toList(),
                        borderData: FlBorderData(show: false),
                        titlesData: FlTitlesData(
                          leftTitles: SideTitles(showTitles: true),
                          rightTitles: SideTitles(showTitles: false),
                          topTitles: SideTitles(showTitles: false),
                          bottomTitles: SideTitles(
                            showTitles: true,
                            getTitles: (double value) {
                              int index = value.toInt();
                              return index >= 0 && index < statistics!.length ? statistics![index].month : '';
                            },
                          ),
                   /*         getTitles: (double value) {
                              switch (value.toInt()) {
                                case 0:
                                  return 'اكتوبر';
                                case 1:
                                  return 'نوفمبر';
                                case 2:
                                  return 'ديسمبر';
                                case 3:
                                  return 'يناير';
                                case 4:
                                  return 'فبراير';
                                case 5:
                                  return 'مارس';
                                // Add more cases for each month
                                default:
                                  return '';
                              }
                            },*/

                          //),
                        ),
                      )
                      : BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                     barGroups: [
                          BarChartGroupData(
                            x: 0,
                            barRods: [
                              BarChartRodData(
                                  y: 3000,
                                  colors: [Colors.green],
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                              BarChartRodData(
                                  y: 2500,
                                  colors: [Colors.blue],
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                              BarChartRodData(
                                  y: 2000,
                                  colors: [Colors.orange],
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                            ],
                          ),
                          BarChartGroupData(x: 1, barRods: [
                            BarChartRodData(
                                y: 2800,
                                colors: [Colors.green],
                                width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5))),
                            BarChartRodData(y: 1300, colors: [Colors.blue],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                            BarChartRodData(y: 700, colors: [Colors.orange],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                          ]),
                          BarChartGroupData(x: 2, barRods: [
                            BarChartRodData(y: 800, colors: [Colors.green],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                            BarChartRodData(y: 2300, colors: [Colors.blue],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                            BarChartRodData(y: 100, colors: [Colors.orange],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                          ]),
                          BarChartGroupData(x: 3, barRods: [
                            BarChartRodData(y: 800   , colors: [Colors.orange],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                            BarChartRodData(y: 300, colors: [Colors.blue],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                            BarChartRodData(y: 2100, colors: [Colors.green],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                          ]),
                          BarChartGroupData(x: 4, barRods: [
                            BarChartRodData(y: 700, colors: [Colors.green],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                            BarChartRodData(y: 500, colors: [Colors.orange],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                            BarChartRodData(y: 1000, colors: [Colors.blue],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                          ]),
                          BarChartGroupData(x: 5, barRods: [
                            BarChartRodData(y: 2800, colors: [Colors.green],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                            BarChartRodData(y: 2300, colors: [Colors.blue],width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))),
                            BarChartRodData(y: 2100,
                                colors: [Colors.orange],
                                width: MediaQuery.of(context).size.width * 0.02,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5))),
                          ]),
                          // Add more groups here for each month
                        ],
                        borderData: FlBorderData(show: false),
                        titlesData: FlTitlesData(
                          leftTitles: SideTitles(showTitles: true),
                          rightTitles: SideTitles(showTitles: false),
                          topTitles: SideTitles(showTitles: false),
                          bottomTitles: SideTitles(
                            showTitles: true,
                            getTitles: (double value) {
                              switch (value.toInt()) {
                                case 0:
                                  return 'اكتوبر';
                                case 1:
                                  return 'نوفمبر';
                                case 2:
                                  return 'ديسمبر';
                                case 3:
                                  return 'يناير';
                                case 4:
                                  return 'فبراير';
                                case 5:
                                  return 'مارس';
                              // Add more cases for each month
                                default:
                                  return '';
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              'مرتجع',
                              style: TextStyle(
                                color: const Color(0xFF758195),
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.04,
                            height: MediaQuery.of(context).size.width * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                     Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                     child:  Row(
                       children: <Widget>[
                         Padding(
                           padding: EdgeInsets.symmetric(horizontal: 5),
                           child: Text(
                             'امر بيع',
                             style: TextStyle(
                               color: const Color(0xFF758195),
                               fontSize: 14,
                               fontWeight: FontWeight.w300,
                             ),
                           ),
                         ),
                         Container(
                           width: MediaQuery.of(context).size.width * 0.04,
                           height: MediaQuery.of(context).size.width * 0.04,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: kBlueColor,
                           ),
                         ),
                       ],
                     ),),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              'تحصيل',
                              style: TextStyle(
                                color: const Color(0xFF758195),
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.04,
                            height: MediaQuery.of(context).size.width * 0.04,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
