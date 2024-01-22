import 'package:booklyapp/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius, required this.content, this.fontSize}) : super(key: key);
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String content;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:borderRadius?? BorderRadius.circular(15),
          )
        ),
          onPressed: () {}, child: Text(
        content,
        style: Styles.textStyle16
            .copyWith(color: textColor, fontWeight: FontWeight.bold, fontSize:fontSize),
      )),
    );
  }
}
