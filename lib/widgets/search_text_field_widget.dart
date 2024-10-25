import 'package:flutter/material.dart';

class SearchTextFieldWidget extends StatelessWidget{
  const SearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const Text(
            'المنتجات المتاحة',
            style: TextStyle(
              fontSize: 23,
            fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.019,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.033,
            decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
              ),
              borderRadius: BorderRadius.circular(8)
            ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.5),
              child: TextField(
                cursorColor: Color.fromARGB(255, 66, 64, 64),
                decoration: InputDecoration(
                       contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                  prefixIcon: Image.asset(
                    'assets/images/search.png',
                    color: Colors.black,
                    ),
                    
                  hintText: 'البحث عن منتج',
                  hintStyle: const TextStyle(
                    color: Color(0xff758195),
                  )
                ),
              ),
            )
          ),
      ],
    );
  }
}