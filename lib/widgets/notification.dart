import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widgets/custom_font.dart';

class Notification extends StatelessWidget {
  const Notification({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    this.timeAgo = 'Just now',
    this.avatarUrl = 'https://picsum.photos/seed/notif1/150/150',
  });

  final String name;
  final String post;
  final String description;
  final String timeAgo;
  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          CircleAvatar(
            radius: ScreenUtil().setSp(25),
            backgroundColor: FB_LIGHT_PRIMARY,
            backgroundImage: NetworkImage(avatarUrl),
          ),
          SizedBox(width: ScreenUtil().setWidth(12)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFont(
                  text: name,
                  fontSize: ScreenUtil().setSp(17),
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
                CustomFont(
                  text: 'Posted: $post',
                  fontSize: ScreenUtil().setSp(13),
                  color: Colors.black87,
                ),
                CustomFont(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey[700]!,
                  fontStyle: FontStyle.italic,
                ),
                SizedBox(height: ScreenUtil().setHeight(3)),
                CustomFont(
                  text: timeAgo,
                  fontSize: ScreenUtil().setSp(11),
                  color: FB_PRIMARY,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
