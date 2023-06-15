import 'package:facebook/data/data.dart';
import 'package:facebook/widgets/circle_button.dart';
import 'package:facebook/widgets/create_postContainer.dart';
import 'package:facebook/widgets/rooms.dart';
import 'package:facebook/widgets/stories.dart';

import 'package:flutter/material.dart';

import 'package:facebook/config/colors.dart' as AppColors;
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../models/post_model.dart';
import '../widgets/post_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.white,
            title: Text(
              "facebook",
              style: TextStyle(
                color: AppColors.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButtons(
                  icon: Icons.search,
                  iconsize: 30.0,
                  onPressed: () => print("Search")),
              CircleButtons(
                  icon: MdiIcons.facebookMessenger,
                  iconsize: 30.0,
                  onPressed: () => print("Messager")),
            ],
          ),
          SliverToBoxAdapter(
              child: CreatePostContainer(
            currentuser: currentUser,
            currentUser: currentUser,
          )),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(
                onlineUsers: onlineUsers,
                onlineUser: [],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Stories(
                currentUser: currentUser,
                stories: stories,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            final Post post = posts[index];
            return PostContainer(post: post);
          }, childCount: posts.length))
        ],
      ),
    );
  }
}
