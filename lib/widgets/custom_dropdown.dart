import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CustomDropdown extends StatefulWidget {
  final String? title;
  final double? width;
  final double? height;
  CustomDropdown({this.title,this.width,this.height});
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? _selectedValue;
  final List<String> _dropdownItems = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'Item 6'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            widget.title ??'',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xff758195),
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        items: _dropdownItems
            .map((item) => DropdownMenuItem<String>(
          value: item,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xff758195),
              ),
            ),
          ),
        ))
            .toList(),
        value: _selectedValue,
        onChanged: (value) {
          setState(() {
            _selectedValue = value as String?;
          });
        },
        buttonStyleData: ButtonStyleData(
          height: widget.height ,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            color: Colors.white,
          ),
        ),
        iconStyleData: IconStyleData(
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff758195),
          ),
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
