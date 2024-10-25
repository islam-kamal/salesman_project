import 'package:flutter/material.dart';
import 'package:water/Base/common/dialogs.dart';
import 'package:water/widgets/take_photo_widget.dart';

class AttachPhotosScreenBody extends StatelessWidget {
  AttachPhotosScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ارفاق صور',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w500),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 18, bottom: 11),
                        child: Text(
                          'يمكنك ارفاق صور للمتجر في حالة طلب مديرك',
                          style: TextStyle(
                              color: Color(0xff25292E),
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),



                      const TakePhoto(),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/makeImage.png'),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.005,
                                ),
                                const Text(
                                  'لم يتم رفع صور بعد',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: InkWell(
                                onTap: () =>
                                    Dialogs.showDialogSendPhotos(
                                        context),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? MediaQuery.of(context).size.height *
                                          0.04
                                      : MediaQuery.of(context).size.height *
                                          0.068,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff1D7AFC),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/sendIcon.png',
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.015,
                                          color: const Color(0xffF9F9F9)),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.006,
                                      ),
                                      const Opacity(
                                        opacity: 0.7,
                                        child: Text(
                                          'ارسال الصور للادارة',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
     );
  }
}
