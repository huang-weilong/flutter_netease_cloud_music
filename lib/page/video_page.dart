import 'package:flutter/material.dart';
import 'package:flutter_netease_cloud_music/constants/f_color.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  List<Map<String, String>> _tab1CardList = [
    {
      'topic': '#陈奕迅·薛之谦·李荣浩#',
      'playCount': '13897',
      'videoDuration': '04:46',
      'title': '陈奕迅《不来也不去》（Live）',
      'name': '全球顶级音乐现场',
      'avatar': 'assets/images/public/avatar.jpg',
      'background': 'assets/images/cover/cover1.png',
      'like': '2134',
      'comment': '93',
    },
    {
      'topic': '#好听的古装剧ost#',
      'playCount': '11万',
      'videoDuration': '04:10',
      'title': '香蜜/步步惊心/三生三世/东宫（虐心混剪）',
      'name': '大猫师妹_',
      'avatar': 'assets/images/cover/cover4.png',
      'background': 'assets/images/cover/cover9.png',
      'like': '291',
      'comment': '82',
    },
    {
      'topic': '#愿有人待你如初疼你入骨，深情永不辜负#',
      'playCount': '45万',
      'videoDuration': '04:41',
      'title': '动情翻唱金玟岐《爱呀》，小姐姐一抹红唇实在是抢眼',
      'name': '悦音之声Soundzguitar',
      'avatar': 'assets/images/cover/cover6.png',
      'background': 'assets/images/cover/cover11.png',
      'like': '4021',
      'comment': '874',
    },
  ];
  List<Map<String, String>> _tab2CardList = [
    {
      'topic': '#[作曲：华晨宇]#',
      'playCount': '67197',
      'videoDuration': '03:01',
      'title': '彩虹色的梦 华晨宇演唱会《for forever》万人蹦迪现场',
      'name': '想吃冰激凌',
      'avatar': 'assets/images/cover/cover2.png',
      'background': 'assets/images/cover/cover10.png',
      'like': '729',
      'comment': '47',
    },
    {
      'topic': '#评论榜#',
      'playCount': '32万',
      'videoDuration': '04:10',
      'title': '二手玫瑰 如你所愿',
      'name': 'C大调的姑娘',
      'avatar': 'assets/images/cover/cover8.png',
      'background': 'assets/images/cover/cover12.png',
      'like': '831',
      'comment': '178',
    },
    {
      'topic': '华晨宇',
      'playCount': '145万',
      'videoDuration': '03:31',
      'title': '华晨宇花花《智商250》湖南小年夜花花逆天嗓音',
      'name': '音乐热点通',
      'avatar': 'assets/images/cover/cover9.png',
      'background': 'assets/images/cover/cover3.png',
      'like': '3.4万',
      'comment': '1.8万',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70.0),
              decoration: BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: FColor.allC, width: 0.5))),
              child: TabBar(
                indicatorColor: FColor.primary,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: EdgeInsets.only(bottom: 8.0),
                labelColor: FColor.primary,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: FColor.all3,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                tabs: [
                  Text('推荐'),
                  Text('现场'),
                  Text('翻唱'),
                  Text('舞蹈'),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 54.0),
                child: TabBarView(children: [
                  ListView(
                    children: _tab1CardList
                        .map((e) => _Tab1Card(
                              topic: e['topic'],
                              playCount: e['playCount'],
                              videoDuration: e['videoDuration'],
                              title: e['title'],
                              name: e['name'],
                              avatar: e['avatar'],
                              background: e['background'],
                              like: e['like'],
                              comment: e['comment'],
                            ))
                        .toList(),
                  ),
                  ListView(
                    children: _tab2CardList
                        .map((e) => _Tab1Card(
                              topic: e['topic'],
                              playCount: e['playCount'],
                              videoDuration: e['videoDuration'],
                              title: e['title'],
                              name: e['name'],
                              avatar: e['avatar'],
                              background: e['background'],
                              like: e['like'],
                              comment: e['comment'],
                            ))
                        .toList(),
                  ),
                  ListView(
                    children: _tab1CardList
                        .map((e) => _Tab1Card(
                              topic: e['topic'],
                              playCount: e['playCount'],
                              videoDuration: e['videoDuration'],
                              title: e['title'],
                              name: e['name'],
                              avatar: e['avatar'],
                              background: e['background'],
                              like: e['like'],
                              comment: e['comment'],
                            ))
                        .toList(),
                  ),
                  ListView(
                    children: _tab2CardList
                        .map((e) => _Tab1Card(
                              topic: e['topic'],
                              playCount: e['playCount'],
                              videoDuration: e['videoDuration'],
                              title: e['title'],
                              name: e['name'],
                              avatar: e['avatar'],
                              background: e['background'],
                              like: e['like'],
                              comment: e['comment'],
                            ))
                        .toList(),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Tab1Card extends StatelessWidget {
  final String topic;
  final String playCount;
  final String videoDuration;
  final String title;
  final String name;
  final String avatar;
  final String background;
  final String like;
  final String comment;
  _Tab1Card({this.topic, this.playCount, this.videoDuration, this.title, this.name, this.avatar, this.background, this.like, this.comment});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(image: AssetImage(background), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: FColor.allE),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(topic, style: TextStyle(color: Colors.white, fontSize: 10.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50.0),
                  child: Image.asset(
                    'assets/images/public/play2.png',
                    width: 30.0,
                    fit: BoxFit.cover,
                    color: FColor.allE.withOpacity(0.7),
                  ),
                ),
                Row(
                  children: [
                    Image.asset('assets/images/public/play1.png', color: Colors.white, width: 10.0),
                    Expanded(
                        child: Text(
                      playCount,
                      style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Image.asset('assets/images/public/leaderboard.png', width: 10.0),
                    ),
                    Text(videoDuration, style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(title, maxLines: 2, overflow: TextOverflow.ellipsis)),
                ClipOval(child: Image.asset(avatar, width: 30.0)),
              ],
            ),
          ),
          Divider(),
          Row(
            children: [
              ClipOval(child: Image.asset(avatar, width: 30.0)),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(name),
              )),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: Image.asset('assets/images/public/like2.png'),
                  ),
                  Positioned(left: 20.0, child: Text(like, style: TextStyle(fontSize: 10.0, color: FColor.all6))),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 36.0),
                    child: Image.asset('assets/images/public/comment.png'),
                  ),
                  Positioned(left: 30.0, child: Text(comment, style: TextStyle(fontSize: 10.0, color: FColor.all6))),
                ],
              ),
              Image.asset('assets/images/public/more.png'),
            ],
          )
        ],
      ),
    );
  }
}
