import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

typedef PostData = Map<String, dynamic>;

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  static const List<PostData> _posts = [
    {
      'userName': 'Macaroni \'85 Dimagiba',
      'postContent':
          'Sabi ko 5 minutes lang ako pipikit pagkatapos kumain, bakit biglang bukas na at may pasok na ulit?',
      'numOfLikes': 42,
      'date': '15 mins ago',
      'hasImage': false,
      'profileImage': 'https://picsum.photos/seed/macaroni85/150/150',
      'postImage': null,
    },
    {
      'userName': 'Lumpia Shanghai Magtanggol',
      'postContent':
          'Nag-soul searching sa bundok pero ang nahanap ko lang ay gutom at muscle pain sa binti.',
      'numOfLikes': 128,
      'date': '1 hr ago',
      'hasImage': true,
      'profileImage': 'https://picsum.photos/seed/lumpiashanghai/150/150',
      'postImage': 'https://picsum.photos/id/1018/800/500',
    },
    {
      'userName': 'Boyet Barya Batumbakal',
      'postContent':
          'Buti pa ang Shopee parcel may "Out for Delivery," eh yung label namin hanggang ngayon "Preparing to Ship" pa rin.',
      'numOfLikes': 215,
      'date': '3 hrs ago',
      'hasImage': false,
      'profileImage': 'https://picsum.photos/seed/boyetbarya/150/150',
      'postImage': null,
    },
    {
      'userName': 'Spaghetti \'88 Macapagal',
      'postContent':
          'Throwback sa mga panahong ang pinoproblema ko lang ay kung anong kulay ng crayon ang gagamitin ko.',
      'numOfLikes': 310,
      'date': '5 hrs ago',
      'hasImage': true,
      'profileImage': 'https://picsum.photos/seed/spaghetti88/150/150',
      'postImage': 'https://picsum.photos/id/1015/800/500',
    },
    {
      'userName': 'Marites Chismosa Catacutan',
      'postContent':
          'Iced coffee muna bago mag-overthink. Hindi ko na alam kung palpitation pa ba ito o kilig sa maling tao.',
      'numOfLikes': 64,
      'date': '8 hrs ago',
      'hasImage': true,
      'profileImage': 'https://picsum.photos/seed/mariteschismosa/150/150',
      'postImage': 'https://picsum.photos/id/1060/800/500',
    },
    {
      'userName': 'Totoy Bato Maligalig',
      'postContent':
          'Ang bilis ng sahod—dumaan lang sa GCash para mag-hi tapos nag-goodbye na agad sa bills.',
      'numOfLikes': 53,
      'date': 'Yesterday at 9:30 PM',
      'hasImage': false,
      'profileImage': 'https://picsum.photos/seed/totoybato/150/150',
      'postImage': null,
    },
    {
      'userName': 'Aling Nena Pautang',
      'postContent':
          'Morning jog para kunwari fit, pero pag-uwi dalawang extra rice at tapsilog ang binanatan. Self-love tawag dito.',
      'numOfLikes': 189,
      'date': 'Yesterday at 7:15 AM',
      'hasImage': true,
      'profileImage': 'https://picsum.photos/seed/alingnena/150/150',
      'postImage': 'https://picsum.photos/id/1043/800/500',
    },
    {
      'userName': 'Karding Kalabaw Dimaculangan',
      'postContent':
          'Yung nag-chat siya ng "Kumusta?" tapos akala mo na-miss ka, yun pala mangungutang lang ng pang-load.',
      'numOfLikes': 97,
      'date': 'November 25',
      'hasImage': false,
      'profileImage': 'https://picsum.photos/seed/kardingkalabaw/150/150',
      'postImage': null,
    },
    {
      'userName': 'Inday Garutay Labandera',
      'postContent':
          'Ganda ng sunset—parang ikaw, ang sarap titigan mula sa malayo pero hindi pwedeng angkinin.',
      'numOfLikes': 241,
      'date': 'November 24',
      'hasImage': true,
      'profileImage': 'https://picsum.photos/seed/indaygarutay/150/150',
      'postImage': 'https://picsum.photos/id/1036/800/500',
    },
    {
      'userName': 'Pepito Manaloto Jr. III',
      'postContent':
          'Manifesting maging milyonaryo kahit ang ambag ko pa lang sa ekonomiya ay pag-add to cart nang walang checkout.',
      'numOfLikes': 112,
      'date': 'November 22',
      'hasImage': false,
      'profileImage': 'https://picsum.photos/seed/pepitomanaloto/150/150',
      'postImage': null,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        final post = _posts[index];
        return NewsFeedCard(
          userName: post['userName'] as String,
          postContent: post['postContent'] as String,
          numOfLikes: post['numOfLikes'] as int,
          date: post['date'] as String,
          hasImage: post['hasImage'] as bool,
          profileImage: post['profileImage'] as String,
          postImage: post['postImage'] as String?,
        );
      },
    );
  }
}