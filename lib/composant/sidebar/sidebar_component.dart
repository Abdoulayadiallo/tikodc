import 'package:flutter/material.dart';
import 'package:tikodc/composant/widgets/avatar_widget.dart';

import '../bookmark/bookmark_widget.dart';
import '../comment/comment_widget.dart';
import '../disque/disque_widget.dart';
import '../like/like_widget.dart';
import '../share/share_widget.dart';

class SidebarComponent extends StatelessWidget {
  final Map<String, dynamic> item;
  const SidebarComponent({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarWidget(
          profile: item['profile'],
        ),
        LikeWidget(count: item['like']),
        CommentWidget(count: item['comment']),
        BookmarkWidget(count: item['bookmark']),
        ShareWidget(count: item['share']),
        DisqueWidget(),
      ],
    );
  }
}
