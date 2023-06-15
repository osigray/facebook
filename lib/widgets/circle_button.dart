import 'package:flutter/material.dart';

class CircleButtons extends StatelessWidget {
  final IconData icon;
  final double iconsize;
  final void Function() onPressed;
  const CircleButtons(
      {Key? key,
      required this.icon,
      required this.iconsize,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        iconSize: iconsize,
        color: Colors.black,
      ),
    );
  }
}
