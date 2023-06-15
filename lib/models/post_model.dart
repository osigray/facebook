import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:facebook/models/models.dart';

class Post extends StatelessWidget {
  final User user;
  final String caption;
  final String timeAgo;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;
  const Post(
      {Key? key,
      required this.user,
      required this.caption,
      required this.timeAgo,
      required this.imageUrl,
      required this.likes,
      required this.comments,
      required this.shares})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
