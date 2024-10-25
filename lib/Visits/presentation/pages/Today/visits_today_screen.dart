import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water/Base/Helper/app_event.dart';
import 'package:water/Base/Helper/app_state.dart';
import 'package:water/Base/Shimmer/loading_shimmer.dart';
import 'package:water/Base/common/navigtor.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/Clients/presentation/pages/clients_screen.dart';
import 'package:water/Clients/presentation/widgets/registered_customers_screen_container_item.dart';
import 'package:water/Visits/presentation/bloc/today_visits_bloc.dart';
import 'package:water/Visits/presentation/pages/History/visits_history_screen.dart';
import 'package:water/Visits/presentation/pages/Today/add_visit_registered_clients_screen.dart';
import '../../../../App/presentation/pages/app_screen.dart';
import '../../../../App/presentation/widgets/app_home_button_widget.dart';

class VisitsTodayScreen extends StatelessWidget {
  const VisitsTodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(child: _page(), screenButtons: [
      AppButtonWidget(
        asset: 'assets/images/add.png',
        text: ' اضافة زيارة',
        onClick: () {
          customAnimatedPushNavigation(
              context, AddVisitRegisteredClientsScreen());
          // Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
        },
      ),
      AppButtonWidget(
        asset: 'assets/images/timeHistory.png',
        text: ' تاريخ الزيارات',
        onClick: () {
          customAnimatedPushNavigation(context, VisitsHistoryScreen());

          //     Navigator.push(context, MaterialPageRoute(builder: (context)=> VisitsHistoryScreen()));
        },
        color: kWhiteColor,
      ),
    ]);
  }
}

class _page extends StatefulWidget {
  _page({super.key});

  @override
  State<_page> createState() => _pageState();
}

class _pageState extends State<_page> {
  @override
  void initState() {
    todayVisitsBloc.add(GetTodayVisitsEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'زيارات اليوم',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.008,
            ),
            BlocBuilder<TodayVisitsBloc, AppState>(
              bloc: todayVisitsBloc,
              builder: (context, state) {
                if (state is Loading) {
                  return const LoadingPlaceHolder(
                    shimmerType: ShimmerType.list,
                    cellShimmerHeight: 50,
                    shimmerCount: 10,
                  );
                }
                else if (state is GeTodayVisitsDone) {
                  if(state.visits != null && state.visits!.isNotEmpty){
                    return GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                            ? 2
                            : 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                            ? 5.1 / 2
                            : 4.5 / 2,
                      ),
                      itemCount: state.visits?.length,
                      itemBuilder: (context, index) {
                        return  RegisteredCustomersScreenContainerItem(
                          storeName: 'اسم المتجر',
                          sales: '30,000',
                          distance: 'يبعد 232 ك.م',
                          money: '15,000 ',
                          visit:  state.visits![index],
                        );
                      },
                    );
                  }
                  else{
                    return Center(
                      child: Text("لا توجد زيارات حاليا"),
                    );
                  }

                } else if (state is GetTodayVisitsErrorLoading) {
                  return Center(
                    child: Text("${state.message}"),
                  );
                } else {
                  return Container();
                }

              },
            )
          ],
        ),
      ),
    );
  }
}
