import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  MenuItemWidget({
    Key? key,
    required this.label,
    this.iconData,
    this.iconColor,
    this.backgroundColor,
    this.color,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final IconData? iconData;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: backgroundColor,
        onPrimary: color,
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 14,
        ),
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: 155,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Icon(
                iconData,
                size: 36,
                color: iconColor,
              ),
            ),
            Text(
              this.label,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
