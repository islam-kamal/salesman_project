import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastWidget {

 static void showToast({String? message}) {
    Fluttertoast.showToast(
        msg: message ?? '',
        toastLength: Toast.LENGTH_SHORT,  // You can use LENGTH_LONG for a longer duration
        gravity: ToastGravity.BOTTOM,     // Position the toast (TOP, BOTTOM, CENTER)
        timeInSecForIosWeb: 1,            // Duration for iOS/web
        backgroundColor: Colors.black,    // Background color
        textColor: Colors.white,          // Text color
        fontSize: 16.0                    // Font size
    );
  }

}