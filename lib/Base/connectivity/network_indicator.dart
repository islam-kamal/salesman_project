import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:water/Base/common/theme.dart';
import 'package:water/App/presentation/widgets/Errors/error_in_network_screen.dart';

class NetworkIndicator extends StatefulWidget {
  final Widget? child;
  const NetworkIndicator({this.child});
  @override
  _NetworkIndicatorState createState() => _NetworkIndicatorState();
}

class _NetworkIndicatorState extends State<NetworkIndicator> {

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (
        BuildContext context,
        ConnectivityResult connectivity,
        Widget child,
      ) {
        print("connectivity : ${connectivity}");
        if (connectivity == ConnectivityResult.none) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child:  ErrorInNetworkScreen(),
            ),
          );
        } else {
          return child;
        }
      },
      builder: (BuildContext context) {
        return widget.child!;
      },
    );
  }
}
