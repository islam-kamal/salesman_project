import 'package:flutter/material.dart';

class VisitDetailsContainerItem extends StatelessWidget{
  const VisitDetailsContainerItem({super.key, required this.name, required this.image});

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: (){},
            focusColor: const Color.fromARGB(255, 30, 133, 219),
              hoverColor: const Color.fromARGB(255, 30, 133, 219),
              onLongPress: () => Colors.blue,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.23,
              height: MediaQuery.of(context).orientation == Orientation.portrait ?
          MediaQuery.of(context).size.height * 0.041
          : MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
            Image.asset(
              image,
              color: Colors.black,
              ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.008,
            ),
             Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
              ),
                                  ],
                                  ),
                              ),
            ),
          );
  }
}