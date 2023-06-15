import 'package:facebook/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Story extends StatelessWidget {
  final User user;
  final String imageUrl;
  final bool isViewed;

  const Story(
      {Key? key,
      required this.user,
      required this.imageUrl,
      required this.isViewed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
