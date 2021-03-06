import 'package:flutter/material.dart';
import 'package:life_style_hub/values/values.dart';

class SocialMediaIcon extends StatelessWidget {
  final IconData icon;
  const SocialMediaIcon({
    Key key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Icon(
        icon,
        color: LSHBlackColor,
      ),
      decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: LSHBlackColor,
            style: BorderStyle.solid,
            width: 0.5,
          ),
          shape: BoxShape.circle),
    );
  }
}
