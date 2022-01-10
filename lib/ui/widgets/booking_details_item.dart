import 'package:flutter/material.dart';
import 'package:mastering_airplane_bwa/shared/theme.dart';

class BookingDetailsItem extends StatelessWidget {
  final String title;
  final String text;
  final Color colorText;
  const BookingDetailsItem({
    Key? key,
    required this.title,
    required this.text,
    required this.colorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icon_check.png"),
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle,
          ),
          Spacer(),
          Text(
            text,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              color: colorText,
            ),
          ),
        ],
      ),
    );
  }
}
