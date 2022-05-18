import 'package:flutter/material.dart';

import '../constant.dart';
import '../widgets/page_header.dart';

class ShapesScreen extends StatelessWidget {
  final String title;
  final Color primaryColor;
  final Color secondaryColor;

  const ShapesScreen({
    Key? key,
    required this.title,
    required this.primaryColor,
    required this.secondaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          PageHeader(
            title: title,
            primaryColor: primaryColor,
            secondaryColor: secondaryColor,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Coming soon...',
              style: kSubTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
