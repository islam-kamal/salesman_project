import 'package:flutter/cupertino.dart';

import '../Base/common/theme.dart';

class ImagePlacholderWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        'assets/images/placholder.png',
        color: kInactiveColor,
        fit: BoxFit.cover,
      ),
    );
  }

}