import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/notification.dart' as notif;

typedef NotificationData = Map<String, String>;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<NotificationData> _notifications = List.generate(20, (index) {
    final users = [
      'Macaroni \'85 Dimagiba',
      'Lumpia Shanghai Magtanggol',
      'Boyet Barya Batumbakal',
      'Spaghetti \'88 Macapagal',
      'Marites Chismosa Catacutan',
      'Totoy Bato Maligalig',
      'Aling Nena Pautang',
      'Karding Kalabaw Dimaculangan',
      'Inday Garutay Labandera',
      'Pepito Manaloto Jr. III',
    ];
    final actions = [
      {'post': 'Weekend Coffee Run', 'desc': 'Liked your photo.'},
      {'post': 'Mobile Prog Lab 2A', 'desc': 'Commented: "Clean UI lods!"'},
      {'post': 'Campus Sunset', 'desc': 'Shared your post to their story.'},
      {'post': 'Half Marathon Prep', 'desc': 'Reacted to your update.'},
      {'post': 'Study Group Notes', 'desc': 'Mentioned you in a comment.'},
    ];

    final user = users[index % users.length];
    final action = actions[index % actions.length];

    return {
      'name': user,
      'post': action['post']!,
      'description': action['desc']!,
      'timeAgo': '${index + 1}h ago',
      'avatar': 'https://picsum.photos/seed/notif${index + 1}/150/150',
    };
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        itemCount: _notifications.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = _notifications[index];
          return notif.Notification(
            name: item['name']!,
            post: item['post']!,
            description: item['description']!,
            timeAgo: item['timeAgo']!,
            avatarUrl: item['avatar']!,
          );
        },
      ),
    );
  }
}