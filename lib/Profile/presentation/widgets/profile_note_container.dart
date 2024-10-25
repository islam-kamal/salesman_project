import 'package:flutter/material.dart';

class ProfileNoteContainer extends StatelessWidget {
  const ProfileNoteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      width: double.infinity,
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.055
          : MediaQuery.of(context).size.height * 0.088,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xff758195),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/ForbiddenCircle.png',
              height: MediaQuery.of(context).orientation == Orientation.portrait ?
              MediaQuery.of(context).size.height * 0.022
              : MediaQuery.of(context).size.height * 0.033
              ),
          ),
           Expanded(
            flex: MediaQuery.of(context).orientation == Orientation.portrait ? 8 : 16,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'لا يمكنك تعديل المعلومات الخاصة بك،',
                  style: TextStyle(
                      color: Color(0xff25292E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'بإمكانك التواصل بمديرك المباشر لطلب تعديلها',
                  style: TextStyle(
                      color: Color(0xff25292E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
