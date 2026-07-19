import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {
  String? title;
  double? fontSize;
  TitleHeader({super.key, this.title, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        title ?? "",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: fontSize ?? 18,
        ),
      ),
    );
  }
}
