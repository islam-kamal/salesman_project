/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water/Base/Helper/app_state.dart';
import 'package:water/Base/Shimmer/loading_shimmer.dart';
import 'package:water/Profile/presentation/bloc/profile_bloc.dart';
import 'package:water/Profile/presentation/widgets/profile_details.dart';
import 'package:water/Profile/presentation/widgets/profile_note_container.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: BlocBuilder<ProfileBloc, AppState>(
          bloc:profileBloc ,
          builder: (context, state) {
            if (state is Loading) {
              return const LoadingPlaceHolder(
                shimmerType: ShimmerType.list,
                cellShimmerHeight: 50,
                shimmerCount: 10,
              );
            }
            else if (state is GetProfileDone) {
              if(state.profileModel!.data != null || state.profileModel!.data!.isNotEmpty){
              return  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'حسابك',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.008,
                  ),
                  const ProfileNoteContainer(),
                   ProfileDetails(
                    gender: state.profileModel!.data![0].gender!,
                    name: state.profileModel!.data![0].name!,
                    cardNumber: state.profileModel!.data![0].idNumber!,
                    employerNumber: state.profileModel!.data![0].employeeCode!,
                    email: state.profileModel!.data![0].login!,
                    phone: state.profileModel!.data![0].mobile!,
                    employment: state.profileModel!.data![0].position!,
                    employerDate: state.profileModel!.data![0].hireDate!,
                  ),
                ],
              );
              }
              else{
                return Center(
                  child: Text("لا توجد بيانات حاليا"),
                );
              }

            } else if (state is GetProfileErrorLoading) {
              return Center(
                child: Text("${state.message}"),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:water/Profile/presentation/widgets/profile_details.dart';
import 'package:water/Profile/presentation/widgets/profile_note_container.dart';
import 'package:water/widgets/button.dart';
import 'package:water/widgets/navigate_basic_container.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'حسابك',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.008,
            ),
            const ProfileNoteContainer(),
            const ProfileDetails(
              gender: 'ذكر',
              name: 'يوسف علي محمد سالم',
              cardNumber: '6677889900',
              employerNumber: '1122334455',
              email: 'yousuf.ali@yanabie.com',
              phone: '+966501234567',
              employment: 'مندوب بيع',
              employerDate: '2015 / 03 / 15',
            ),
          ],
        ),
      ),
    );
  }
}
