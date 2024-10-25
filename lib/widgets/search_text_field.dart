import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, required this.hintTextField});

final String hintTextField;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            height: MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.033
                : MediaQuery.of(context).size.height * 0.055,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3.5),
              child: TextField(
                cursorColor: Color.fromARGB(255, 66, 64, 64),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    prefixIcon: Image.asset(
                      'assets/images/search.png',
                      width: MediaQuery.of(context).size.width * 0.003,
                      color: Colors.black,
                    ),
                    hintText: hintTextField,
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff758195),
                    )),
              ),
            )),
      ],
    );
  }
}
