import 'package:flutter/material.dart';

class InvoiceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InvoiceScreenState();
  }
}
class InvoiceScreenState extends State<InvoiceScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Text("Invoice Screen")),
    );
  }

}