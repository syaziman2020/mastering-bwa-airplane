import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class Button extends StatelessWidget {
  final double width;
  final EdgeInsets margin;
  final Function() onPressed;
  final String title;
  const Button(
      {Key? key,
      this.width = double.infinity,
      this.margin = EdgeInsets.zero,
      required this.onPressed,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadiusDefault),
        color: kPrimaryColor,
      ),
    );
  }
}
