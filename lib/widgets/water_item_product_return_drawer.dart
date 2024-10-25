import 'package:flutter/material.dart';

class WaterItemProductReturnDrawer extends StatelessWidget{
  const WaterItemProductReturnDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
             children: [
              Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child:  Image.asset('assets/images/IMG.png')),
               SizedBox(
            width: MediaQuery.of(context).size.width * 0.012,
                  ),
               Padding(
                 padding: const EdgeInsets.only(top: 6),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'مياه',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                      const Text(
                        'مياه مدينة شرنك 15 حبة  600 مل',
                             style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                      ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.017,
                      ),
                      const Text(
                        '42 ر.س',
                           style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                  ],
                 ),
               ),
             ],
            ),
          ),
        
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.012,
        ),
      ],
    );
  }
}