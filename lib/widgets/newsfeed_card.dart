import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_font.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String profileImage;
  final String currentUserImage;
  final String? postImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes = 0,
    this.hasImage = false,
    this.profileImage = 'https://i.pravatar.cc/150?img=11',
    this.currentUserImage = 'https://i.pravatar.cc/150?img=12',
    this.postImage,
  });

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(ScreenUtil().setSp(5)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(6),
          horizontal: ScreenUtil().setWidth(10),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: FB_DARK_PRIMARY,
              size: ScreenUtil().setSp(18),
            ),
            SizedBox(width: ScreenUtil().setWidth(5)),
            CustomFont(
              text: label,
              fontSize: ScreenUtil().setSp(12),
              color: FB_DARK_PRIMARY,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(18),
                  backgroundColor: Colors.grey[300],
                  backgroundImage: NetworkImage(profileImage),
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFont(
                      text: userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        CustomFont(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(15),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(8)),

            // Post Caption
            CustomFont(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(8)),

            // Dynamic Post Image
            if (hasImage && postImage != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(ScreenUtil().setSp(5)),
                child: Image.network(
                  postImage!,
                  width: double.infinity,
                  height: ScreenUtil().setHeight(200),
                  fit: BoxFit.cover,
                ),
              ),

            SizedBox(height: ScreenUtil().setHeight(8)),

            // Likes Counter Row
            Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  size: ScreenUtil().setSp(14),
                  color: FB_PRIMARY,
                ),
                SizedBox(width: ScreenUtil().setWidth(5)),
                CustomFont(
                  text: numOfLikes.toString(),
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey[700]!,
                ),
              ],
            ),
            const Divider(),

            // Widget-Based Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildActionButton(
                  icon: Icons.thumb_up_alt_outlined,
                  label: 'Like',
                  onTap: () => debugPrint('Liked'),
                ),
                _buildActionButton(
                  icon: Icons.mode_comment_outlined,
                  label: 'Comment',
                  onTap: () => debugPrint('Commented'),
                ),
                _buildActionButton(
                  icon: Icons.redo,
                  label: 'Share',
                  onTap: () => debugPrint('Shared'),
                ),
              ],
            ),
            const Divider(),

            // Comment Input Row
            Row(
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(14),
                  backgroundColor: Colors.grey[300],
                  backgroundImage: NetworkImage(currentUserImage),
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: ScreenUtil().setSp(10)),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(28),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(
                        ScreenUtil().setSp(12),
                      ),
                    ),
                    child: CustomFont(
                      text: 'Write a comment...',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomFont(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}