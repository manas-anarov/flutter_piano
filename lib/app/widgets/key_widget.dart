import 'package:flutter/material.dart';

class KeyWidget extends StatelessWidget {
  final Color color;

  const KeyWidget({
    Key key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 100.0,
    );
  }
}
