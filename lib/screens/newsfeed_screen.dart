import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Marco Reyes',
          postContent: 'Finally wrapped up our mobile programming lab! Ready for weekend coffee.',
          numOfLikes: 42,
          date: '2 hrs ago',
          profileImage: 'https://i.pravatar.cc/150?img=33',
        ),
        NewsFeedCard(
          userName: 'Alyssa Santos',
          postContent: 'Quick afternoon walk around the campus before evening classes start.',
          numOfLikes: 128,
          hasImage: true,
          postImage: 'https://picsum.photos/id/1018/800/500',
          profileImage: 'https://i.pravatar.cc/150?img=47',
          date: 'Yesterday at 4:15 PM',
        ),
      ],
    );
  }
}