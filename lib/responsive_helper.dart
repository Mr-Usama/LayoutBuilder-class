import 'package:flutter/cupertino.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({Key? key, required this.mobile, required this.tab})
      : super(key: key);
  final Widget mobile;
  final Widget tab;

  //final Widget desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 700) {
        return mobile;
      } else {
        return tab;
      }
    });
  }
}
