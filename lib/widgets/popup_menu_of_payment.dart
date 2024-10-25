/*
import 'package:flutter/material.dart';

class PopupMenuOfPayment extends StatelessWidget{
  const PopupMenuOfPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
            color: Colors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Icon(Icons.keyboard_arrow_down_outlined,)
          ),
          onSelected: (value) {
            if (value == "Cash") {
              // add desired output
            }else if(value == "Cheque"){
              // add desired output
            }else if(value == "Bank Transfer"){
              // add desired output
            }
            else if(value == "Wallet"){
              // add desired output
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
              value: "Cash",
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.attach_money, size: 40),
                  ),
                  Text(
                    'Cash',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            const PopupMenuItem(
              value: "Cheque",
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.receipt, size: 40),
                  ),
                  Text(
                    'Cheque',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            const PopupMenuItem(
              value: "Bank Transfer",
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.account_balance, size: 40),
                  ),
                  Text(
                    'Bank Transfer',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            const PopupMenuItem(
              value: "Wallet",
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.account_balance_wallet, size: 40),
                  ),
                  Text(
                    'Wallet',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        );
}
}*/

import 'package:flutter/material.dart';

class PopupMenuOfPayment extends StatelessWidget {
  final Function(String) onSelected;

  const PopupMenuOfPayment({super.key, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Colors.white,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: const Icon(Icons.keyboard_arrow_down_outlined),
      ),
      onSelected: (value) {
        // Invoke the callback when a value is selected
        onSelected(value as String);
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        const PopupMenuItem(
          value: "cash",
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.attach_money, size: 40),
              ),
              Text(
                'Cash',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        const PopupMenuItem(
          value: "bank",
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.account_balance, size: 40),
              ),
              Text(
                'Bank Transfer',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        /*const PopupMenuItem(
          value: "Wallet",
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.account_balance_wallet, size: 40),
              ),
              Text(
                'Wallet',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        const PopupMenuItem(
          value: "Cheque",
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.receipt, size: 40),
              ),
              Text(
                'Cheque',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),*/

      ],
    );
  }
}
